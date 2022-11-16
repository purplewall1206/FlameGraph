# [002] 14043.121429210:   jcc      ffffffff813413df shuffle_freelist+0x1f 		jz 0xffffffff81341645 	 IPC: 12.00 (12/1) 
import re
import functiontools
class record:
    def __init__(self, cpu, ts, action, addr, offset, inst, ipc):
        self.cpu = cpu
        self.ts = ts
        self.action = action
        self.addr = addr
        self.offset = offset
        self.inst = inst
        self.ipc = ipc
    def __init__(self, x):
        self.cpu = x[1:4]
        self.ts = x[6:x.find(':')]
        self.action = x[x.find(':')+1:x.find('f')]
        self.addr = x[x.find('f'):x.find('f')+16]
        offset_end = x[x.find('f')+17:].find(' ')+x.find('f')+17
        self.offset = x[x.find('f')+17:offset_end]
        if x.find('IPC') == -1:
            self.inst = x[offset_end+1:]
            self.ipc = ''
        else:
            self.inst = x[offset_end+1:x.find('IPC')]
            self.ipc = x[x.find('IPC'):]
    def p(self):
        print('%s:%s'%(self.cpu, self.offset))


records = list()
with open('shuffle_freelist.perf.data', 'r') as f:
    for line in f.readlines():
        print(line)
        r = record(line)
        records.append(r)


# statistic excution times

count = dict()
for r in records:
    if r.offset in count.keys():
        count[r.offset] = count[r.offset] + 1
    else:
        count[r.offset] = 1

def cmp_offset_order(x, y):
    xx = int(x[x.find('+')+1:], 16)
    yy = int(y[y.find('+')+1:], 16)
    return xx - yy

for c in sorted(count, key=functools.cmp_to_key(cmp_offset_order)):
    print("%s, %s"%(c, count[c]))


# split into different functions
functions = list()
curr = list()

for r in records:
    if r.addr == 'ffffffff813413c0':
        functions.append(curr)
        curr = []
    curr.append(r)

if len(curr) != 0:
    functions.append(curr)
    curr = []

i = 0
for f in functions:
    print("%d,%d"%(i, len(f)))
    i = i + 1

# statistic time intervals

interval = dict()
for f in functions:
    for i in range(1, len(f)):
        interval[f[i]] = float(f[i].ts)-float(f[i-1].ts)

c = 0
with open('interval.txt', 'w') as f:
    for i in range(1, len(functions)):
        func = functions[i]
        for j in range(1, len(func)):
            f.write(str(i))
            f.write(",")
            f.write(func[j].offset)
            f.write(",")
            f.write(str(interval[func[j]]))
            f.write("\n")
