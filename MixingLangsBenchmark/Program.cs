using System;
using System.Runtime.InteropServices;
using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Running;
using BenchmarkDotNet.Configs;
using BenchmarkDotNet.Exporters.Csv;
using BenchmarkDotNet.Diagnosers;
using BenchmarkDotNet.Environments;
using BenchmarkDotNet.Jobs;

namespace MixingLangs
{

    /// <summary>
    /// Benchmarks class
    /// </summary>
    public class MixedLangsBenchmark
    {
        private const int DEFAULT_WEIGHT = 1;

#if NET461 || CLASSIC || DEBUG
        [DllImport(@"..\..\..\..\levenshtein-C\x64\Release\levenshtein-C.dll", EntryPoint = "levenshtein_C")]
        public static extern int levenshtein_C(string string1, string string2, int w, int s, int a, int d);

        [DllImport(@"..\..\..\..\levenshtein-C\x64\Release\levenshtein-C.dll", EntryPoint = "dummy_C")]
        public static extern int dummy_C(string string1, string string2, int w, int s, int a, int d);
#elif NETCOREAPP2_0 || CORE || NETCORE
        [DllImport(@"..\..\..\..\..\..\..\..\levenshtein-C\x64\Release\levenshtein-C.dll", EntryPoint = "levenshtein_C")]
        public static extern int levenshtein_C(string string1, string string2, int w, int s, int a, int d);

        [DllImport(@"..\..\..\..\..\..\..\..\levenshtein-C\x64\Release\levenshtein-C.dll", EntryPoint = "dummy_C")]
        public static extern int dummy_C(string string1, string string2, int w, int s, int a, int d);

#endif
        static void Main()
        {
#if NET461 || CLASSIC
            Console.WriteLine("Running on net461 ...");
#elif NETCOREAPP2_0 || CORE || NETCORE
            Console.WriteLine("Running on .net core...");
#endif
            //s_data[0] = TestUtils.GenTestStrings(10, 3, 2, 2, 1);
            //s_data[1] = TestUtils.GenTestStrings(50, 10, 15, 15, 10);
            //s_data[2] = TestUtils.GenTestStrings(100, 30, 20, 20, 15);
            //s_data[3] = TestUtils.GenTestStrings(500, 300, 200, 200, 150);
            //s_data[4] = TestUtils.GenTestStrings(1000, 100, 100, 200, 150);
#if DEBUG
            GC.Collect();
            GC.Collect();
            TestUtils.SanityCheck();
            TestUtils.ManualTest(s_data[0][0],s_data[0][1]);

            Console.WriteLine("To start main benchmark:  Press any key ...");
            Console.ReadLine();
            return;
#endif
            var config = ManualConfig.Create(DefaultConfig.Instance)
#if NET461
                .With(Job.RyuJitX64)
                //.With(Job.LegacyJitX64)
#else
                .With(Job.Core)
                //.With(
                //    new Job(Job.Core)
                //    {
                //        Env =
                //        {
                //            Platform = Platform.X64,
                //            Gc =
                //            {   Server = true,
                //                Concurrent = true
                //            }
                //        }
                //    })
#endif
                .With(MemoryDiagnoser.Default)
                .With(HardwareCounter.TotalCycles)
                .With(new CsvExporter(
                    CsvSeparator.Comma,
                    new BenchmarkDotNet.Reports.SummaryStyle
                    {
                        PrintUnitsInHeader = true,
                        PrintUnitsInContent = false,
                        TimeUnit = BenchmarkDotNet.Horology.TimeUnit.Microsecond,
                        SizeUnit = BenchmarkDotNet.Columns.SizeUnit.KB
                    }));
            var summary = BenchmarkRunner.Run<MixedLangsBenchmark>(config);
        }

        [Params(0/*, 1, 2, 3, 4*/)]
        public int ExperimentIdx { get; set; }

        public static string[][] s_data = {
            //new[] { "ymggfguwuk", "ymftxguwuk" }, //10
            //new[] { "gbmgrsgnhcwsnyggwlrmehcvwixvfpoqpufwrlrmbwiofqihla", "gbmgrsgnxcwsjvgwlrmmhcwixvpohpufwrrmcyiofqila" }, //50
            //new[] { "xmipvofodrxwoficqaknjepbtqqhgocovwjbranlkhhdlifowkgdptggjfrruwkokusdwbutyfrxgfkrpdpxeppepswrirentvgn", "dmipvofxdrsdofncqcxyrepwgfghgocoetjbmvnekhndlifewkggptggjfrhuwiokusdwpuqyfrxlfkmpdpdaepepswrirentvgn" },//100
            //new[] { "mbycexgfosfyuvdusqbaratvqhyhvkjclhvaxyglkhrkbrvidhqhpfodthejqexdlmvvmljgwhphvtaqndrimddockirjucwuqsqgqipawsiyrgsljnpdaqkeglabnudohvahdotmjshiegjigbsebouncxsmcfhasgpwghknptoqjtrdovocwmpengwmrlixnyskmixkkahfvunaetcjvbvwhcubbobevosblvgqqubtgdkmoypdumsjrdrkybccccgxkyvwhvqwhdwckbfqejufndfuaedxwtimdrmwseydggusxvkslrbfsvhnqiidwkygqdkoygtwcrlbtqgqluoquljntevgeofdunpedigldhkpepaflrxlhpjuwoukccghageplndxyxfdnrdxufnaanlqvcvmmkgdgijtwqfcqeomkkejuehfrcdogxktjynuhrvcttdkfonogyjtwqiukubdpnculeiuljvmpjlpbbtvhdi", "mbywyugfoseybvdnejeirctuieyhlfdxvhdjxbgshhrsbrvrdnvgpygstbqilsyddmvyfljpwhthpvlqjgjpswnouutrwicwcqsogvipgwftyrgsldppmaqknouppnuvhuquxdetitshiepjhgbscbolxexpupmhangkvbwkrxtoujtrexvocwahenbqfrccrgyenjwxkcxhgfaiaxtehvbkeqkubbveavoebqvgqieytglqmoyxdusynjdmeajycccjskiwrhkdwtavdfbaqekufneflfhxxftumdrrgsiydupuvqvoskrbpsdhnxiicbuovxdkobdewesxktmscjucnuljntjvoeswisupedilhmhfvxrdklbxlrgprwclkclyhwypklndmjnfqqhpxqmreaflovvvmekgdgipawhupeeobfgxjuehlrqsogiktdhyyodvcpvdbeocwgyjywsiujukdsvcubeqtdlvmqilxbhtvudi" }, //500
            new[] { "cxwmlplequwtctcgykhkwldwkulhhpvsuqawsywqkmawvatseojxbdpjmskeroamjxxpjysmuclludjjiouqdoyhvoibefgpjwijjghbvcrwhpexgxqxummbmjhkcwdemsrfmcugibbjdukiotrqhgpmjeokvpwdmhvevlqeahnqrrgpmywbfphnkpdyysratyhsypuyaocvvobqjvhrqpkjfdtcohosdgfeurbkgkpbflkqaybypwfgginydbnfenbratajtqquoiuasggnesyajkfcqyuabywnpeedfjdvbtqbdnrmuubujrbbrkswtklxnaccetfyhbtpvkpknotxrtxhlbrjunivkykbkayumfnykjlcvxahptomuadobcunhivxxevvpctwdqqvlprhgbiuhlhrpaxxsyohklmdrrcxrqmdrghemueyfokfspfykutqarhxdublwpofxmswuxgcvospkxdvmfevnasvtwdnmqjmouvifxesdekoyuocnoxoqjdqfnfvmqeptwenqxvbubynuxwvhusawsbqjorrdbnusfxdldgtjnxxiqqefsndwsypgyudwixoiyedeevvrskuejuhrnxycblguwdasxautdrksxskrmfusnwncrtukkckplpakakpikaywsrfxwqygqtaohbofqyodtmespjnlfgklaiiehnduphblpbqgncfwkjuhdbbbiquyfkmkavyjapamqutdoqdbgjnefyewghmouidmrdddsoswuxxjwqoieoxvbpofkpxjwmbntmufkydmmoslswkeokjsaoybytfctpaldkaxjxptairbtkrsthhcqordkkngxofumrfiihskdtocpjjsilrqlbikayxqfijxcumujxsinblchkaiwykvfdqaprxxxjoujcestwehaeljtyvpppnhbsvpixrvfvnnaurqoqafcccwugwxkrhfjfodslwvmkqappvinvnemma", "cxwmlvlrquwtetcgykfkwldwkuhhhpvguqawsywqknawtqteeojxbdpjmskeroamjxgcjysmuccrudjjiouqdoyhvoibefgjfwijjglsvcrnkpexgxqrummbmvhkcwmemsrfmcugibbjuukiotrrhgtmjfokopddmhvevlqeghhqrrgpmywbfphukpdlfsrafyhsypupaocvvsbqjvhrqpotfstcoposdgfeurbkgophfvkqaifypwoggxnydnnfenbrttcjtqkuoiubsggnhspajkfcqyuaejwnpeedfsdfbtlbdnrogqbujrybrkswtklxlfccetfihbtyvkpknotxrtxhlbrxunuvkykqkayuvfnykjlwvxahptomuadobcunxifxxevvpctodqqvdprhnliuhlhrpaxxsysbklcdrrypsqmdrghemuwofokfspwykutmurhxdublwbofxmswuxgcvoiprxdvmfevnafvtwdnmqjmouvifxesdecoyuocnoxoqpdqenfvmueotrenqxsbhbynavefhuyamsbqjorrdbnusoxdldgtjwxxinqqfsndwsapgyupwixoiyndeevvrskuevuhrnxycblguwyaexautdrkjxtdrmfusninorxukkccplpakakpikaywsrfxwqygqtuopbjfqyodnmespjwlfgklawoehnduhwbgpkqgnqpwkbuhbbbdiquyfkmravyjapomqntdoqdbgjnefyhwihmouidmddddsoswuvxjjqooecxvbgorkpxjwmbnimufkydmmoslcakxogjsaoywqffctppldcaysxptaarbtkrsthhcworxkkngxofumrfiihskdtocpyjsilrqgbtkayxqfljwdamajxsinblcheaiwykvfsqarrfxxjoujcgstwgoaeljtyvpppnhbskpixrvyvknhurqolofccmwtgofkrhfjfodslgvokqappvinvnemma"}, //1000
        };

        //[Benchmark(Description = "C# safe", Baseline = true)]
        //public int Levenshtein_CSharp() =>
        //    Export_CSharp.Lev.levenshtein_safe(
        //        s_data[ExperimentIdx][0],
        //        s_data[ExperimentIdx][1],
        //        1, 1, 1, 1);

        //[Benchmark(Description = "C# unsafe1")]
        //public int Levenshtein_CSharp_unsafe1() =>
        //    Export_CSharp.Lev.levenshtein_unsafe1(
        //        s_data[ExperimentIdx][0],
        //        s_data[ExperimentIdx][1],
        //        1, 1, 1, 1);

        //[Benchmark(Description = "C# unsafe2")]
        //public int Levenshtein_CSharp_unsafe2() =>
        //    Export_CSharp.Lev.levenshtein_unsafe2(
        //        s_data[ExperimentIdx][0],
        //        s_data[ExperimentIdx][1],
        //        1, 1, 1, 1);

        [Benchmark(Description = "Native C: dummy call")]
        public int dummy_C() => dummy_C(
                                    s_data[ExperimentIdx][0],
                                    s_data[ExperimentIdx][1],
                                    DEFAULT_WEIGHT, 1, 1, 1);

        //[Benchmark(Description = "Native C")]
        //public int Levenshtein_C() =>
        //                            levenshtein_C(
        //                                        s_data[ExperimentIdx][0],
        //                                        s_data[ExperimentIdx][1],
        //                                        1, 1, 1, 1);

        //[Benchmark(Description = "F# imperative")]
        //public int levenshtein_F_imperative() =>
        //    Export_FSharp.Lev.levenshtein_imperative(
        //            s_data[ExperimentIdx][0],
        //            s_data[ExperimentIdx][1],
        //            1, 1, 1, 1);

        //[Benchmark(Description = "F# functional")]
        //public int levenshtein_F_functional() =>
        //    Export_FSharp.Lev.levenshtein_functional(
        //                s_data[ExperimentIdx][0],
        //                s_data[ExperimentIdx][1],
        //                1, 1, 1, 1);

    }
}
