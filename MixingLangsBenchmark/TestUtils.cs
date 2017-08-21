using System;
using System.Diagnostics;
using System.Text;

namespace MixingLangs
{
    /// <summary>
    /// Aux code for testing/development.
    /// </summary>
    class TestUtils
    {
        static readonly Func<string, string, int, int, int, int, int>[] s_levFP_arr = new Func<string, string, int, int, int, int, int>[6];

        static TestUtils()
        {
            s_levFP_arr[0] = Export_CSharp.Lev.levenshtein_safe;
            s_levFP_arr[1] = Export_CSharp.Lev.levenshtein_unsafe1;
            s_levFP_arr[2] = Export_CSharp.Lev.levenshtein_unsafe2;
            s_levFP_arr[3] = MixedLangsBenchmark.levenshtein_C;
            s_levFP_arr[4] = Export_FSharp.Lev.levenshtein_imperative;
            s_levFP_arr[5] = Export_FSharp.Lev.levenshtein_functional;
        }

        /// <summary>
        /// Simply check that all implementations work correctly.
        /// This is not a benchmarking code.
        /// </summary>
        public static void SanityCheck()
        {
            foreach (var fp in s_levFP_arr)
            {
                Debug.Assert(0 == fp("abc", "abc", 1, 1, 1, 1));
                Debug.Assert(1 == fp("abcd", "abc", 1, 1, 1, 1));
                Debug.Assert(1 == fp("abc", "abcd", 1, 1, 1, 1));
                Debug.Assert(1 == fp("abx", "abc", 1, 1, 1, 1));
                Debug.Assert(1 == fp("acb", "abc", 1, 1, 1, 1));
                Debug.Assert(2 == fp("a__", "abc", 1, 1, 1, 1));
                Debug.Assert(3 == fp("xyz", "abc", 1, 1, 1, 1));
            }
        }

        /// <summary>
        /// Generate test strings and their permutations.
        /// This code was used to generate benchmark test data <typeparamref name="MixingLangs.MixedLangsBenchmark.s_data"/>
        /// </summary>
        public static string[] GenTestStrings(int strLen, int addNum, int delNum, int subNum, int swapNum)
        {
            const byte PERM_NONE = 0; //Keep it always 0
            const byte PERM_ADD = 1;
            const byte PERM_DEL = 2;
            const byte PERM_SUB = 3;
            const byte PERM_SWAP = 4;

            var rand = new Random();
            StringBuilder sbStr1 = new StringBuilder(strLen);
            StringBuilder sbStr2 = new StringBuilder(strLen);
            Func<int> nextChar = () => rand.Next(097, 122 /*a-z*/);

            int[] probablilities = new int[strLen];

            //Add
            for (int i = 0; i < addNum; ++i)
            {
                probablilities[i] = PERM_ADD;
            }
            //delNum
            for (int i = addNum; i < delNum; ++i)
            {
                probablilities[i] = PERM_DEL;
            }

            //subNum
            for (int i = delNum; i < subNum; ++i)
            {
                probablilities[i] = PERM_SUB;
            }

            //swapNum
            for (int i = subNum; i < swapNum; ++i)
            {
                probablilities[i] = PERM_SWAP;
            }

            for (int i = 0; i < strLen; i++)
            {
                sbStr1.Append((char)nextChar());

                while (addNum > 0 || delNum > 0 || subNum > 0 || swapNum > 0)
                {
                    int nextPerm = probablilities[rand.Next(0, probablilities.Length - 1)];
                    if (nextPerm == PERM_NONE) // Don't change
                    {
                        sbStr2.Append(sbStr1[sbStr1.Length - 1]);
                        break;
                    }
                    else if (nextPerm == PERM_ADD) // Add
                    {
                        if (addNum == 0)
                            continue;

                        sbStr2.Append((char)nextChar());
                        addNum--;
                        break;
                    }
                    else if (nextPerm == PERM_DEL) // Del
                    {
                        if (delNum == 0)
                            continue;

                        //skip it
                        delNum--;
                        break;
                    }
                    else if (nextPerm == PERM_SUB) // Substitude
                    {
                        if (subNum == 0)
                            continue;

                        char next = (char)nextChar();
                        do
                        {
                            next = (char)nextChar();
                        }
                        while (sbStr1[sbStr1.Length - 1] == next);

                        sbStr2.Append(next);
                        subNum--;
                        break;
                    }
                    else if (nextPerm == PERM_SWAP) // Swap
                    {
                        if (swapNum == 0)
                            continue;

                        if (sbStr1.Length > 1)
                        {
                            if (sbStr2.Length > 1)
                                sbStr2.Remove(sbStr2.Length - 1, 1);

                            sbStr2.Append(sbStr1[sbStr1.Length - 1]);
                            sbStr2.Append(sbStr1[sbStr1.Length - 2]);
                        }

                        swapNum--;
                        break;
                    }
                }
            }

            return new string[] { sbStr1.ToString(), sbStr2.ToString() };
        }

        /// <summary>
        /// Naive measurment with <see cref="Stopwatch"/>.
        /// </summary>
        /// <param name="str1"></param>
        /// <param name="str2"></param>
        public static void ManualTest(string str1, string str2)
        {
            //Cold Run
            foreach (var fp in s_levFP_arr)
            {
                fp(str1, str2, 1, 1, 1, 1);
            }

            var watch = new Stopwatch();
            int steps = 100000;
            
            foreach (var fp in s_levFP_arr)
            {
                watch.Restart();
                for (int i = 0; i < steps; i++)
                {
                    var res = fp(str1, str2, 1, 1, 1, 1);
                }
                watch.Stop();

                Console.WriteLine( string.Format("{0,30}: {1,10} ", fp.Method.Name, (double)(watch.ElapsedMilliseconds * 1000) / steps));
            }

        }
    }
}
