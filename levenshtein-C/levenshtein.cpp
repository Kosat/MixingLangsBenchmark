#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <malloc.h>


extern "C"
{
	__declspec(dllexport) int __stdcall dummy_C(const char *string1, const char *string2,
		int w, int s, int a, int d)
	{
		//Use all arguments here
		return strlen(string1)+ strlen(string2) + w + s + a + d;
	}

	/*
	* This function implements the Damerau-Levenshtein algorithm to calculate edit distance between two strings.
	*
	* NOTE: This code is licenced under GPLv2 and was taken from https://github.com/git/git as a reference implementation of
	* Levenshtein-Damerau algorithm used in the wild. I use it for benchmarking purposes only. 
	* The code was slightly changed to be compiled by msvc and used from managed code. 
	*/
	__declspec(dllexport) int __stdcall levenshtein_C(const char *string1, const char *string2,
		int w, int s, int a, int d)
	{
		int len1 = strlen(string1), len2 = strlen(string2);
		int i, j;

		int *row0 = (int*)malloc(sizeof(int) * (len2 + 1));
		int *row1 = (int*)malloc(sizeof(int) * (len2 + 1));
		int *row2 = (int*)malloc(sizeof(int) * (len2 + 1));


		for (j = 0; j <= len2; j++)
			row1[j] = j * a;
		for (i = 0; i < len1; i++) {
			int *dummy;

			row2[0] = (i + 1) * d;
			for (j = 0; j < len2; j++) {
				/* substitution */
				row2[j + 1] = row1[j] + s * (string1[i] != string2[j]);
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

		i = row1[len2];
		free(row0);
		free(row1);
		free(row2);

		return i;
	}
}