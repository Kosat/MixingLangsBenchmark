``` ini

BenchmarkDotNet=v0.10.9, OS=Windows 10 Redstone 1 (10.0.14393)
Processor=Intel Core i7-4790 CPU 3.60GHz (Haswell), ProcessorCount=8
Frequency=3515620 Hz, Resolution=284.4448 ns, Timer=TSC
  [Host]       : .NET Framework 4.7 (CLR 4.0.30319.42000), 64bit RyuJIT-v4.7.2102.0
  LegacyJitX64 : .NET Framework 4.7 (CLR 4.0.30319.42000), 64bit LegacyJIT/clrjit-v4.7.2102.0;compatjit-v4.7.2102.0
  RyuJitX64    : .NET Framework 4.7 (CLR 4.0.30319.42000), 64bit RyuJIT-v4.7.2102.0

Platform=X64  Runtime=Clr  

```
 |                 Method |          Job |       Jit | ExperimentIdx |            Mean |          Error |         StdDev | Scaled | ScaledSD |   Gen 0 | Allocated |
 |----------------------- |------------- |---------- |-------------- |----------------:|---------------:|---------------:|-------:|---------:|--------:|----------:|
 |              **'C# safe'** | **LegacyJitX64** | **LegacyJit** |             **0** |       **459.70 ns** |      **4.8611 ns** |      **4.5470 ns** |   **1.00** |     **0.00** |  **0.0505** |     **216 B** |
 |           'C# unsafe1' | LegacyJitX64 | LegacyJit |             0 |       415.45 ns |      1.9383 ns |      1.8131 ns |   0.90 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | LegacyJitX64 | LegacyJit |             0 |       335.93 ns |      4.1852 ns |      3.9148 ns |   0.73 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | LegacyJitX64 | LegacyJit |             0 |        91.53 ns |      0.6719 ns |      0.6285 ns |   0.20 |     0.00 |       - |       0 B |
 |             'Native C' | LegacyJitX64 | LegacyJit |             0 |       492.30 ns |      4.4053 ns |      4.1207 ns |   1.07 |     0.01 |       - |       0 B |
 |        'F# imperative' | LegacyJitX64 | LegacyJit |             0 |     1,061.49 ns |      3.8714 ns |      3.6213 ns |   2.31 |     0.02 |  0.1526 |     648 B |
 |        'F# functional' | LegacyJitX64 | LegacyJit |             0 |     1,238.90 ns |      6.3174 ns |      5.9093 ns |   2.70 |     0.03 |  0.2880 |    1216 B |
 |              'C# safe' |    RyuJitX64 |    RyuJit |             0 |       488.78 ns |      2.4797 ns |      2.1982 ns |   1.00 |     0.00 |  0.0505 |     216 B |
 |           'C# unsafe1' |    RyuJitX64 |    RyuJit |             0 |       307.96 ns |      3.4236 ns |      3.2024 ns |   0.63 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    RyuJitX64 |    RyuJit |             0 |       331.71 ns |      2.6339 ns |      2.4637 ns |   0.68 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    RyuJitX64 |    RyuJit |             0 |        96.37 ns |      0.4678 ns |      0.3652 ns |   0.20 |     0.00 |       - |       0 B |
 |             'Native C' |    RyuJitX64 |    RyuJit |             0 |       487.90 ns |      4.5092 ns |      4.2179 ns |   1.00 |     0.01 |       - |       0 B |
 |        'F# imperative' |    RyuJitX64 |    RyuJit |             0 |       884.59 ns |      5.1341 ns |      4.8024 ns |   1.81 |     0.01 |  0.1535 |     648 B |
 |        'F# functional' |    RyuJitX64 |    RyuJit |             0 |     1,096.24 ns |      9.0226 ns |      8.4397 ns |   2.24 |     0.02 |  0.2880 |    1216 B |
 |              **'C# safe'** | **LegacyJitX64** | **LegacyJit** |             **1** |    **11,073.08 ns** |    **130.1599 ns** |    **121.7516 ns** |   **1.00** |     **0.00** |  **0.1373** |     **624 B** |
 |           'C# unsafe1' | LegacyJitX64 | LegacyJit |             1 |     9,789.45 ns |     48.0141 ns |     42.5632 ns |   0.88 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | LegacyJitX64 | LegacyJit |             1 |     7,555.92 ns |    118.3734 ns |    110.7265 ns |   0.68 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | LegacyJitX64 | LegacyJit |             1 |       159.62 ns |      0.9362 ns |      0.8299 ns |   0.01 |     0.00 |       - |       0 B |
 |             'Native C' | LegacyJitX64 | LegacyJit |             1 |     6,160.89 ns |    115.1247 ns |    107.6877 ns |   0.56 |     0.01 |       - |       0 B |
 |        'F# imperative' | LegacyJitX64 | LegacyJit |             1 |    17,431.12 ns |     68.7956 ns |     57.4475 ns |   1.57 |     0.02 |  0.3357 |    1488 B |
 |        'F# functional' | LegacyJitX64 | LegacyJit |             1 |    18,529.58 ns |    327.2397 ns |    306.1002 ns |   1.67 |     0.03 |  0.8850 |    3736 B |
 |              'C# safe' |    RyuJitX64 |    RyuJit |             1 |    10,921.52 ns |     47.1736 ns |     44.1262 ns |   1.00 |     0.00 |  0.1373 |     624 B |
 |           'C# unsafe1' |    RyuJitX64 |    RyuJit |             1 |     7,041.74 ns |    114.2329 ns |    101.2645 ns |   0.64 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    RyuJitX64 |    RyuJit |             1 |     7,445.95 ns |     67.2856 ns |     62.9390 ns |   0.68 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    RyuJitX64 |    RyuJit |             1 |       159.18 ns |      1.4320 ns |      1.3395 ns |   0.01 |     0.00 |       - |       0 B |
 |             'Native C' |    RyuJitX64 |    RyuJit |             1 |     6,137.57 ns |     44.5922 ns |     41.7115 ns |   0.56 |     0.00 |       - |       0 B |
 |        'F# imperative' |    RyuJitX64 |    RyuJit |             1 |    12,583.67 ns |     67.3738 ns |     63.0215 ns |   1.15 |     0.01 |  0.3510 |    1488 B |
 |        'F# functional' |    RyuJitX64 |    RyuJit |             1 |    15,803.57 ns |    204.4055 ns |    191.2010 ns |   1.45 |     0.02 |  0.8850 |    3736 B |
 |              **'C# safe'** | **LegacyJitX64** | **LegacyJit** |             **2** |    **60,482.55 ns** |    **242.9069 ns** |    **227.2152 ns** |   **1.00** |     **0.00** |  **0.2441** |    **1296 B** |
 |           'C# unsafe1' | LegacyJitX64 | LegacyJit |             2 |    52,821.28 ns |    474.0709 ns |    443.4461 ns |   0.87 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | LegacyJitX64 | LegacyJit |             2 |    38,927.93 ns |    292.3916 ns |    273.5033 ns |   0.64 |     0.00 |       - |       0 B |
 | 'Native C: dummy call' | LegacyJitX64 | LegacyJit |             2 |       269.93 ns |      2.3374 ns |      2.1864 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' | LegacyJitX64 | LegacyJit |             2 |    30,831.04 ns |    162.4359 ns |    143.9952 ns |   0.51 |     0.00 |       - |       0 B |
 |        'F# imperative' | LegacyJitX64 | LegacyJit |             2 |    81,921.85 ns |    626.1374 ns |    585.6892 ns |   1.35 |     0.01 |  0.6104 |    2696 B |
 |        'F# functional' | LegacyJitX64 | LegacyJit |             2 |    87,678.72 ns |    609.9591 ns |    509.3434 ns |   1.45 |     0.01 |  1.7090 |    7584 B |
 |              'C# safe' |    RyuJitX64 |    RyuJit |             2 |    60,700.06 ns |    720.3989 ns |    673.8615 ns |   1.00 |     0.00 |  0.3052 |    1296 B |
 |           'C# unsafe1' |    RyuJitX64 |    RyuJit |             2 |    41,025.47 ns |    216.9935 ns |    169.4142 ns |   0.68 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    RyuJitX64 |    RyuJit |             2 |    38,998.62 ns |    108.5636 ns |     90.6555 ns |   0.64 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    RyuJitX64 |    RyuJit |             2 |       275.76 ns |      0.9289 ns |      0.8234 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' |    RyuJitX64 |    RyuJit |             2 |    31,045.33 ns |    323.5012 ns |    302.6032 ns |   0.51 |     0.01 |       - |       0 B |
 |        'F# imperative' |    RyuJitX64 |    RyuJit |             2 |    64,198.18 ns |    930.3878 ns |    870.2852 ns |   1.06 |     0.02 |  0.6104 |    2696 B |
 |        'F# functional' |    RyuJitX64 |    RyuJit |             2 |    75,217.01 ns |    319.6348 ns |    266.9095 ns |   1.24 |     0.01 |  1.7090 |    7584 B |
 |              **'C# safe'** | **LegacyJitX64** | **LegacyJit** |             **3** | **1,571,140.04 ns** | **10,367.8154 ns** |  **8,657.5946 ns** |   **1.00** |     **0.00** |       **-** |    **6106 B** |
 |           'C# unsafe1' | LegacyJitX64 | LegacyJit |             3 | 1,484,302.75 ns |  7,406.7875 ns |  6,565.9235 ns |   0.94 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | LegacyJitX64 | LegacyJit |             3 |   996,693.70 ns |  7,724.8578 ns |  7,225.8361 ns |   0.63 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | LegacyJitX64 | LegacyJit |             3 |     1,044.42 ns |      5.4403 ns |      5.0889 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' | LegacyJitX64 | LegacyJit |             3 |   896,918.11 ns |  9,002.4156 ns |  8,420.8643 ns |   0.57 |     0.01 |       - |       0 B |
 |        'F# imperative' | LegacyJitX64 | LegacyJit |             3 | 2,005,200.26 ns | 11,065.6042 ns |  9,809.3690 ns |   1.28 |     0.01 |       - |   10624 B |
 |        'F# functional' | LegacyJitX64 | LegacyJit |             3 | 2,170,137.25 ns | 18,339.1656 ns | 16,257.1910 ns |   1.38 |     0.01 |  7.8125 |   34720 B |
 |              'C# safe' |    RyuJitX64 |    RyuJit |             3 | 1,598,854.66 ns |  8,673.3407 ns |  8,113.0475 ns |   1.00 |     0.00 |       - |    6112 B |
 |           'C# unsafe1' |    RyuJitX64 |    RyuJit |             3 | 1,201,680.54 ns |  7,965.1984 ns |  7,450.6508 ns |   0.75 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    RyuJitX64 |    RyuJit |             3 | 1,003,674.01 ns |  4,749.7804 ns |  4,442.9471 ns |   0.63 |     0.00 |       - |       0 B |
 | 'Native C: dummy call' |    RyuJitX64 |    RyuJit |             3 |     1,043.98 ns |      5.6268 ns |      5.2633 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' |    RyuJitX64 |    RyuJit |             3 |   894,291.68 ns |  5,337.2927 ns |  4,992.5065 ns |   0.56 |     0.00 |       - |       0 B |
 |        'F# imperative' |    RyuJitX64 |    RyuJit |             3 | 1,612,160.54 ns |  9,753.3609 ns |  8,646.0995 ns |   1.01 |     0.01 |  1.9531 |   10628 B |
 |        'F# functional' |    RyuJitX64 |    RyuJit |             3 | 1,914,987.09 ns |  5,230.4078 ns |  4,636.6198 ns |   1.20 |     0.01 |  7.8125 |   34704 B |
 |              **'C# safe'** | **LegacyJitX64** | **LegacyJit** |             **4** | **5,883,766.92 ns** | **40,129.2589 ns** | **37,536.9301 ns** |   **1.00** |     **0.00** |       **-** |   **12160 B** |
 |           'C# unsafe1' | LegacyJitX64 | LegacyJit |             4 | 5,278,377.28 ns | 63,113.7675 ns | 59,036.6515 ns |   0.90 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | LegacyJitX64 | LegacyJit |             4 | 3,600,187.79 ns | 24,079.5794 ns | 22,524.0514 ns |   0.61 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | LegacyJitX64 | LegacyJit |             4 |     1,836.72 ns |     16.0798 ns |     15.0411 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' | LegacyJitX64 | LegacyJit |             4 | 3,248,468.25 ns | 23,895.9468 ns | 22,352.2812 ns |   0.55 |     0.01 |       - |       0 B |
 |        'F# imperative' | LegacyJitX64 | LegacyJit |             4 | 7,639,808.87 ns | 29,152.3464 ns | 25,842.7932 ns |   1.30 |     0.01 |       - |   20800 B |
 |        'F# functional' | LegacyJitX64 | LegacyJit |             4 | 8,270,933.54 ns | 58,471.1919 ns | 54,693.9839 ns |   1.41 |     0.01 | 15.6250 |   68927 B |
 |              'C# safe' |    RyuJitX64 |    RyuJit |             4 | 5,713,773.50 ns | 42,774.7677 ns | 40,011.5403 ns |   1.00 |     0.00 |       - |   12160 B |
 |           'C# unsafe1' |    RyuJitX64 |    RyuJit |             4 | 4,079,661.65 ns | 30,103.7116 ns | 28,159.0278 ns |   0.71 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    RyuJitX64 |    RyuJit |             4 | 3,550,459.27 ns | 30,139.3309 ns | 28,192.3460 ns |   0.62 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    RyuJitX64 |    RyuJit |             4 |     1,829.85 ns |     15.1411 ns |     14.1630 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' |    RyuJitX64 |    RyuJit |             4 | 3,193,874.39 ns | 18,554.9129 ns | 17,356.2754 ns |   0.56 |     0.00 |       - |       0 B |
 |        'F# imperative' |    RyuJitX64 |    RyuJit |             4 | 5,842,438.20 ns | 49,660.2187 ns | 46,452.1948 ns |   1.02 |     0.01 |       - |   20800 B |
 |        'F# functional' |    RyuJitX64 |    RyuJit |             4 | 6,885,290.01 ns | 52,200.4119 ns | 48,828.2929 ns |   1.21 |     0.01 | 15.6250 |   68863 B |
