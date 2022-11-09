# intel-pt


intel processor trace is a hardware feature to record the program execution by encoding packet periodically.

control flow tracing packets:
- timing, 
- program flow information (e.g. branch targets, branch taken/not taken indications) and 
- program-induced mode related information (e.g. Intel TSX state transitions, CR3 changes).

Intel PT can also be configured to log software-generated packets using PTWRITE

```
 Intel Processor Trace (0x14):
      IA32_RTIT_CR3_MATCH is accessible      = true
      configurable PSB & cycle-accurate      = true
      IP & TraceStop filtering; PT preserve  = true
      MTC timing packet; suppress COFI-based = true
      PTWRITE support                        = true
      power event trace support              = false
      PSB/PMI preservation support           = true
      ToPA output scheme support             = true
      ToPA can hold many output entries      = true
      single-range output scheme support     = true
      output to trace transport              = false
      IP payloads have LIP values & CS       = false
      configurable address ranges            = 0x2 (2)
      supported MTC periods bitmask          = 0x249 (585)
      supported cycle threshold bitmask      = 0x3f (63)
      supported config PSB freq bitmask      = 0x3f (63)
```

## Cycle Count (CYC) packets

Cycle Count (CYC) packets: CYC packets provide indication of the number of processor core clock cycles that pass between packets.

> 32.3.6
>> Cycle-Accurate Mode
>> Intel PT can be run in a cycle-accurate mode which enables CYC packets (see Section 32.4.2.14) that provide low-
>> level information in the processor core clock domain. This cycle counter data in CYC packets can be used to
>> compute IPC (Instructions Per Cycle), or to track wall-clock time on a fine-grain level.

![cyc_example](./cyc_example.png)

## perf test

```sh
sudo perf record -e intel_pt/cyc=1/u ./a.out

sudo perf report -D > trace.dump

sudo perf script --ns --itrace=i1t -F +srcline,+srccode > decoded.dump

sudo perf record
```

![perinstruction.png](./perinstruction.png)