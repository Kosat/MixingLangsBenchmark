using System;
using System.Runtime.InteropServices;
using System.Security;

namespace Export_CSharp
{
    /// <summary>
    /// C# implamentations of Damerau–Levenshtein algorithm. Both safe and unsafe.
    /// </summary>
    public static class Lev
    {

        /// <summary>
        /// Implementation of Damerau–Levenshtein algorithm that calculates the edit distance between <paramref name="string1"/> and <paramref name="string2"/>
        /// </summary>
        /// <param name="string1">String 1</param>
        /// <param name="string2">String 2</param>
        /// <param name="w">Swap weight</param>
        /// <param name="s">Substitution weight</param>
        /// <param name="a">Addition weight</param>
        /// <param name="d">Deletion weight</param>
        /// <returns>The edit distance between the strings.</returns>
        public static int levenshtein_safe(string string1, string string2, int w, int s, int a, int d)
        {
            int len1 = string1.Length, len2 = string2.Length;
            int i, j;

            int[] row0 = new int[len2 + 1];
            int[] row1 = new int[len2 + 1];
            int[] row2 = new int[len2 + 1];

            for (j = 0; j <= len2; j++)
                row1[j] = j * a;

            for (i = 0; i < len1; i++)
            {
                int[] dummy;

                row2[0] = (i + 1) * d;
                for (j = 0; j < len2; j++)
                {
                    /* substitution */
                    row2[j + 1] = row1[j] + s * ((string1[i] != string2[j]) ? 1 : 0);
                    /* swap */
                    if (i > 0 && j > 0 && string1[i - 1] == string2[j] &&
                        string1[i] == string2[j - 1] &&
                        row2[j + 1] > row0[j - 1] + w)
                        row2[j + 1] = row0[j - 1] + w;
                    /* deletion */
                    if (row2[j + 1] > row1[j + 1] + d)
                        row2[j + 1] = row1[j + 1] + d;
                    /* insertion */
                    if (row2[j + 1] > row2[j] + a)
                        row2[j + 1] = row2[j] + a;
                }

                dummy = row0;
                row0 = row1;
                row1 = row2;
                row2 = dummy;
            }

            return row1[len2];
        }

        /// <summary>
        /// Implementation of Damerau–Levenshtein algorithm that calculates the edit distance between <paramref name="string1"/> and <paramref name="string2"/>
        /// </summary>
        /// <param name="string1">String 1</param>
        /// <param name="string2">String 2</param>
        /// <param name="w">Swap weight</param>
        /// <param name="s">Substitution weight</param>
        /// <param name="a">Addition weight</param>
        /// <param name="d">Deletion weight</param>
        /// <returns>The edit distance between the strings.</returns>
        [SuppressUnmanagedCodeSecurity]
        public unsafe static int levenshtein_unsafe1(string string1, string string2, int w, int s, int a, int d)
        {

            const int OPT_SHORT_STR_LEN = 15;

            fixed (char* string1Ptr = string1)
            fixed (char* string2Ptr = string2)
            {
                int len1 = string1.Length, len2 = string2.Length;
                int i, j;

                var tint_size = sizeof(int);

                IntPtr row0, row1, row2;

                if (len1 < OPT_SHORT_STR_LEN && len2 < OPT_SHORT_STR_LEN)
                {
                    var row0_ = stackalloc int[len2 + 1];
                    var row1_ = stackalloc int[len2 + 1];
                    var row2_ = stackalloc int[len2 + 1];

                    row0 = new IntPtr(row0_);
                    row1 = new IntPtr(row1_);
                    row2 = new IntPtr(row2_);
                }
                else
                {
                    row0 = Marshal.AllocHGlobal((len2 + 1) * tint_size);
                    row1 = Marshal.AllocHGlobal((len2 + 1) * tint_size);
                    row2 = Marshal.AllocHGlobal((len2 + 1) * tint_size);
                }

                int* row0Arr = (int*)row0;
                int* row1Arr = (int*)row1;
                int* row2Arr = (int*)row2;

                for (j = 0; j <= len2; j++)
                    *(row1Arr + j) = j * a;

                for (i = 0; i < len1; i++)
                {
                    int* dummy;

                    *(row2Arr + 0) = (i + 1) * d;

                    for (j = 0; j < len2; j++)
                    {
                        /* substitution */
                        *(row2Arr + (j + 1)) = *(row1Arr + j) + s * ((string1Ptr[i] != string2Ptr[j]) ? 1 : 0);

                        /* swap */
                        if (i > 0 && j > 0 && string1Ptr[i - 1] == string2Ptr[j]
                            && string1Ptr[i] == string2Ptr[j - 1]
                            && *(row2Arr + (j + 1)) > *(row0Arr + (j - 1)) + w)

                            *(row2Arr + (j + 1)) = *(row0Arr + (j - 1)) + w;

                        /* deletion */
                        if (*(row2Arr + (j + 1)) > *(row1Arr + (j + 1)) + d)
                            *(row2Arr + (j + 1)) = *(row1Arr + (j + 1)) + d;

                        /* insertion */
                        if (*(row2Arr + (j + 1)) > *(row2Arr + j) + a)
                            *(row2Arr + (j + 1)) = *(row2Arr + j) + a;
                    }

                    dummy = row0Arr;
                    row0Arr = row1Arr;
                    row1Arr = row2Arr;
                    row2Arr = dummy;
                }
                i = *(row1Arr + len2);


                if (len1 >= OPT_SHORT_STR_LEN || len2 >= OPT_SHORT_STR_LEN)
                {
                    Marshal.FreeHGlobal(row0);
                    Marshal.FreeHGlobal(row1);
                    Marshal.FreeHGlobal(row2);
                }

                return i;
            }
        }

        /// <summary>
        /// Implementation of Damerau–Levenshtein algorithm that calculates the edit distance between <paramref name="string1"/> and <paramref name="string2"/>
        /// </summary>
        /// <remarks>
        /// This implementation is different from <see cref="levenshtein_unsafe1"/> in the part of filling the distances table.
        /// It utilizes <see cref="Math.Min(int,int)"/> method.
        /// </remarks>
        /// <param name="string1">String 1</param>
        /// <param name="string2">String 2</param>
        /// <param name="w">Swap weight</param>
        /// <param name="s">Substitution weight</param>
        /// <param name="a">Addition weight</param>
        /// <param name="d">Deletion weight</param>
        /// <returns>The edit distance between the strings.</returns>
        [SuppressUnmanagedCodeSecurity]
        public unsafe static int levenshtein_unsafe2(string string1, string string2, int w, int s, int a, int d)
        {
            const int OPT_SHORT_STR_LEN = 15;

            fixed (char* string1Ptr = string1)
            fixed (char* string2Ptr = string2)
            {
                int len1 = string1.Length, len2 = string2.Length;
                int i, j;

                var tint_size = sizeof(int);

                IntPtr row0, row1, row2;

                if (len1 < OPT_SHORT_STR_LEN && len2 < OPT_SHORT_STR_LEN)
                {
                    var row0_ = stackalloc int[len2 + 1];
                    var row1_ = stackalloc int[len2 + 1];
                    var row2_ = stackalloc int[len2 + 1];

                    row0 = new IntPtr(row0_);
                    row1 = new IntPtr(row1_);
                    row2 = new IntPtr(row2_);
                }
                else
                {
                    row0 = Marshal.AllocHGlobal((len2 + 1) * tint_size);
                    row1 = Marshal.AllocHGlobal((len2 + 1) * tint_size);
                    row2 = Marshal.AllocHGlobal((len2 + 1) * tint_size);
                }

                int* row0Arr = (int*)row0;
                int* row1Arr = (int*)row1;
                int* row2Arr = (int*)row2;

                for (j = 0; j <= len2; j++)
                    *(row1Arr + j) = j * a;

                for (i = 0; i < len1; i++)
                {
                    int* dummy;

                    *(row2Arr + 0) = (i + 1) * d;

                    for (j = 0; j < len2; j++)
                    {
                        int total_min = Math.Min(*(row2Arr + j) + a, *(row1Arr + (j + 1)) + d);
                        total_min = Math.Min(total_min, *(row1Arr + j) + s * ((string1Ptr[i] != string2Ptr[j]) ? 1 : 0));

                        if (i > 0 && j > 0
                            && string1Ptr[i - 1] == string2Ptr[j]
                            && string1Ptr[i] == string2Ptr[j - 1])
                        {
                            total_min = Math.Min(total_min, *(row0Arr + (j - 1)) + w);
                        }

                        *(row2Arr + (j + 1)) = total_min;
                    }

                    dummy = row0Arr;
                    row0Arr = row1Arr;
                    row1Arr = row2Arr;
                    row2Arr = dummy;
                }

                i = *(row1Arr + len2);


                if (len1 >= OPT_SHORT_STR_LEN || len2 >= OPT_SHORT_STR_LEN)
                {
                    Marshal.FreeHGlobal(row0);
                    Marshal.FreeHGlobal(row1);
                    Marshal.FreeHGlobal(row2);
                }

                return i;
            }
        }

    }
}
