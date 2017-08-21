extern "C"
{
	__declspec(dllexport) int __stdcall dummy_C(const char *string1, const char *string2,
		int w, int s, int a, int d);

	__declspec(dllexport) int __stdcall levenshtein (const char *string1, const char *string2, int w, int s, int a, int d);
}