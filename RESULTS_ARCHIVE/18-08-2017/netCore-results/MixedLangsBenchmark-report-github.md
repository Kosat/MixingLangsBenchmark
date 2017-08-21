``` ini

BenchmarkDotNet=v0.10.9, OS=Windows 10 Redstone 1 (10.0.14393)
Processor=Intel Core i7-4790 CPU 3.60GHz (Haswell), ProcessorCount=8
Frequency=3515620 Hz, Resolution=284.4448 ns, Timer=TSC
.NET Core SDK=2.0.0
  [Host]     : .NET Core 2.0.0 (Framework 4.6.00001.0), 64bit RyuJIT
  Job-HRRVQD : .NET Core 2.0.0 (Framework 4.6.00001.0), 64bit RyuJIT
  Core       : .NET Core 2.0.0 (Framework 4.6.00001.0), 64bit RyuJIT

Platform=X64  Runtime=Core  Concurrent=True  

```
 |                 Method |     Job | Server | ExperimentIdx |            Mean |          Error |         StdDev | Scaled | ScaledSD |   Gen 0 | Allocated |
 |----------------------- |-------- |------- |-------------- |----------------:|---------------:|---------------:|-------:|---------:|--------:|----------:|
 |              **'C# safe'** | **Default** |   **True** |             **0** |       **538.74 ns** |      **3.0073 ns** |      **2.5112 ns** |   **1.00** |     **0.00** |  **0.0019** |     **216 B** |
 |           'C# unsafe1' | Default |   True |             0 |       358.10 ns |      1.0958 ns |      1.0250 ns |   0.66 |     0.00 |       - |       0 B |
 |           'C# unsafe2' | Default |   True |             0 |       331.15 ns |      2.3080 ns |      2.0460 ns |   0.61 |     0.00 |       - |       0 B |
 | 'Native C: dummy call' | Default |   True |             0 |        85.11 ns |      0.4480 ns |      0.4190 ns |   0.16 |     0.00 |       - |       0 B |
 |             'Native C' | Default |   True |             0 |       475.81 ns |      3.0655 ns |      2.7175 ns |   0.88 |     0.01 |       - |       0 B |
 |        'F# imperative' | Default |   True |             0 |       900.95 ns |      3.1253 ns |      2.9234 ns |   1.67 |     0.01 |  0.0068 |     648 B |
 |        'F# functional' | Default |   True |             0 |     1,061.14 ns |     14.3747 ns |     13.4461 ns |   1.97 |     0.03 |  0.0131 |    1216 B |
 |              'C# safe' |    Core |  False |             0 |       541.57 ns |      6.2821 ns |      5.8763 ns |   1.00 |     0.00 |  0.0505 |     216 B |
 |           'C# unsafe1' |    Core |  False |             0 |       363.63 ns |      3.1623 ns |      2.9580 ns |   0.67 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    Core |  False |             0 |       335.91 ns |      6.5953 ns |      7.0569 ns |   0.62 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    Core |  False |             0 |        84.59 ns |      0.5933 ns |      0.5550 ns |   0.16 |     0.00 |       - |       0 B |
 |             'Native C' |    Core |  False |             0 |       473.79 ns |      4.2467 ns |      3.9724 ns |   0.87 |     0.01 |       - |       0 B |
 |        'F# imperative' |    Core |  False |             0 |       897.00 ns |      5.2957 ns |      4.9536 ns |   1.66 |     0.02 |  0.1535 |     648 B |
 |        'F# functional' |    Core |  False |             0 |     1,062.39 ns |      7.0171 ns |      6.5638 ns |   1.96 |     0.02 |  0.2880 |    1216 B |
 |              **'C# safe'** | **Default** |   **True** |             **1** |    **11,979.62 ns** |    **102.7986 ns** |     **96.1578 ns** |   **1.00** |     **0.00** |       **-** |     **624 B** |
 |           'C# unsafe1' | Default |   True |             1 |     9,294.00 ns |     62.7820 ns |     58.7263 ns |   0.78 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | Default |   True |             1 |     7,388.14 ns |     42.8343 ns |     40.0672 ns |   0.62 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | Default |   True |             1 |       153.53 ns |      1.5100 ns |      1.3386 ns |   0.01 |     0.00 |       - |       0 B |
 |             'Native C' | Default |   True |             1 |     6,106.58 ns |     56.4283 ns |     52.7831 ns |   0.51 |     0.01 |       - |       0 B |
 |        'F# imperative' | Default |   True |             1 |    13,474.52 ns |     97.2986 ns |     86.2527 ns |   1.12 |     0.01 |  0.0153 |    1488 B |
 |        'F# functional' | Default |   True |             1 |    14,401.88 ns |    116.2812 ns |    108.7695 ns |   1.20 |     0.01 |  0.0305 |    3736 B |
 |              'C# safe' |    Core |  False |             1 |    11,942.92 ns |    115.2343 ns |    107.7903 ns |   1.00 |     0.00 |  0.1373 |     624 B |
 |           'C# unsafe1' |    Core |  False |             1 |    11,784.41 ns |    184.3935 ns |    172.4818 ns |   0.99 |     0.02 |       - |       0 B |
 |           'C# unsafe2' |    Core |  False |             1 |     7,475.63 ns |     77.0671 ns |     72.0886 ns |   0.63 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    Core |  False |             1 |       158.50 ns |      1.8578 ns |      1.7378 ns |   0.01 |     0.00 |       - |       0 B |
 |             'Native C' |    Core |  False |             1 |     6,133.86 ns |     51.8295 ns |     48.4813 ns |   0.51 |     0.01 |       - |       0 B |
 |        'F# imperative' |    Core |  False |             1 |    13,461.67 ns |    116.2124 ns |    108.7051 ns |   1.13 |     0.01 |  0.3510 |    1488 B |
 |        'F# functional' |    Core |  False |             1 |    15,118.95 ns |     80.7492 ns |     75.5329 ns |   1.27 |     0.01 |  0.8850 |    3736 B |
 |              **'C# safe'** | **Default** |   **True** |             **2** |    **65,547.75 ns** |    **815.6701 ns** |    **762.9783 ns** |   **1.00** |     **0.00** |       **-** |    **1296 B** |
 |           'C# unsafe1' | Default |   True |             2 |    51,060.22 ns |    225.7926 ns |    200.1592 ns |   0.78 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | Default |   True |             2 |    33,957.79 ns |    171.9349 ns |    160.8280 ns |   0.52 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | Default |   True |             2 |       279.27 ns |      3.9443 ns |      3.6895 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' | Default |   True |             2 |    31,151.45 ns |    216.9273 ns |    202.9139 ns |   0.48 |     0.01 |       - |       0 B |
 |        'F# imperative' | Default |   True |             2 |    69,906.31 ns |    281.6685 ns |    263.4729 ns |   1.07 |     0.01 |       - |    2696 B |
 |        'F# functional' | Default |   True |             2 |    70,444.98 ns |    509.0139 ns |    425.0496 ns |   1.07 |     0.01 |       - |    7584 B |
 |              'C# safe' |    Core |  False |             2 |    64,836.90 ns |    235.8334 ns |    220.5987 ns |   1.00 |     0.00 |  0.2441 |    1296 B |
 |           'C# unsafe1' |    Core |  False |             2 |    51,474.85 ns |    292.4875 ns |    273.5930 ns |   0.79 |     0.00 |       - |       0 B |
 |           'C# unsafe2' |    Core |  False |             2 |    37,529.07 ns |    435.8763 ns |    386.3930 ns |   0.58 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    Core |  False |             2 |       265.96 ns |      1.8773 ns |      1.7560 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' |    Core |  False |             2 |    30,922.10 ns |    154.7759 ns |    129.2449 ns |   0.48 |     0.00 |       - |       0 B |
 |        'F# imperative' |    Core |  False |             2 |    69,785.76 ns |    887.7102 ns |    830.3646 ns |   1.08 |     0.01 |  0.6104 |    2696 B |
 |        'F# functional' |    Core |  False |             2 |    73,914.04 ns |  1,069.7269 ns |  1,000.6231 ns |   1.14 |     0.02 |  1.7090 |    7584 B |
 |              **'C# safe'** | **Default** |   **True** |             **3** | **1,730,576.27 ns** | **13,197.8046 ns** | **12,345.2334 ns** |   **1.00** |     **0.00** |       **-** |    **6096 B** |
 |           'C# unsafe1' | Default |   True |             3 | 1,398,195.27 ns | 18,487.5721 ns | 17,293.2847 ns |   0.81 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | Default |   True |             3 |   996,293.87 ns |  9,236.7302 ns |  7,713.0873 ns |   0.58 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | Default |   True |             3 |     1,024.19 ns |      9.2586 ns |      8.6605 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' | Default |   True |             3 |   901,271.04 ns |  4,453.5687 ns |  4,165.8705 ns |   0.52 |     0.00 |       - |       0 B |
 |        'F# imperative' | Default |   True |             3 | 1,794,556.68 ns | 18,353.5176 ns | 17,167.8901 ns |   1.04 |     0.01 |       - |   10616 B |
 |        'F# functional' | Default |   True |             3 | 1,765,011.40 ns | 14,644.8550 ns | 13,698.8051 ns |   1.02 |     0.01 |       - |   34704 B |
 |              'C# safe' |    Core |  False |             3 | 1,754,549.06 ns |  8,298.6493 ns |  7,762.5610 ns |   1.00 |     0.00 |       - |    6096 B |
 |           'C# unsafe1' |    Core |  False |             3 | 1,413,401.19 ns | 14,310.4882 ns | 13,386.0383 ns |   0.81 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    Core |  False |             3 | 1,001,220.30 ns |  4,065.3133 ns |  3,802.6963 ns |   0.57 |     0.00 |       - |       0 B |
 | 'Native C: dummy call' |    Core |  False |             3 |     1,035.56 ns |      6.6056 ns |      6.1789 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' |    Core |  False |             3 |   920,869.57 ns |  1,711.3860 ns |  1,517.0989 ns |   0.52 |     0.00 |       - |       0 B |
 |        'F# imperative' |    Core |  False |             3 | 1,821,238.99 ns |  7,935.7709 ns |  7,034.8535 ns |   1.04 |     0.01 |  1.9531 |   10616 B |
 |        'F# functional' |    Core |  False |             3 | 1,841,810.80 ns | 11,675.2307 ns | 10,921.0170 ns |   1.05 |     0.01 |  7.8125 |   34704 B |
 |              **'C# safe'** | **Default** |   **True** |             **4** | **6,222,547.70 ns** | **41,777.9236 ns** | **39,079.0919 ns** |   **1.00** |     **0.00** |       **-** |   **12096 B** |
 |           'C# unsafe1' | Default |   True |             4 | 4,703,410.49 ns | 48,355.2269 ns | 42,865.6450 ns |   0.76 |     0.01 |       - |       0 B |
 |           'C# unsafe2' | Default |   True |             4 | 3,507,611.06 ns | 31,849.5486 ns | 29,792.0846 ns |   0.56 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' | Default |   True |             4 |     1,811.47 ns |     11.9663 ns |     11.1933 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' | Default |   True |             4 | 3,231,215.15 ns | 36,438.0133 ns | 34,084.1369 ns |   0.52 |     0.01 |       - |       0 B |
 |        'F# imperative' | Default |   True |             4 | 6,360,685.94 ns | 43,296.7509 ns | 40,499.8037 ns |   1.02 |     0.01 |       - |   20736 B |
 |        'F# functional' | Default |   True |             4 | 6,437,765.61 ns | 47,134.1258 ns | 39,359.1260 ns |   1.03 |     0.01 |       - |   68824 B |
 |              'C# safe' |    Core |  False |             4 | 6,215,175.32 ns | 48,224.7631 ns | 45,109.4689 ns |   1.00 |     0.00 |       - |   12096 B |
 |           'C# unsafe1' |    Core |  False |             4 | 4,842,739.92 ns | 27,722.5344 ns | 24,575.3022 ns |   0.78 |     0.01 |       - |       0 B |
 |           'C# unsafe2' |    Core |  False |             4 | 3,536,283.47 ns | 26,089.6000 ns | 24,404.2257 ns |   0.57 |     0.01 |       - |       0 B |
 | 'Native C: dummy call' |    Core |  False |             4 |     1,818.71 ns |     12.4343 ns |     11.6310 ns |   0.00 |     0.00 |       - |       0 B |
 |             'Native C' |    Core |  False |             4 | 3,213,397.61 ns | 32,874.8901 ns | 30,751.1896 ns |   0.52 |     0.01 |       - |       0 B |
 |        'F# imperative' |    Core |  False |             4 | 6,467,313.12 ns | 20,795.1090 ns | 18,434.3206 ns |   1.04 |     0.01 |       - |   20736 B |
 |        'F# functional' |    Core |  False |             4 | 6,727,460.12 ns | 22,285.2414 ns | 20,845.6266 ns |   1.08 |     0.01 | 15.6250 |   68824 B |
