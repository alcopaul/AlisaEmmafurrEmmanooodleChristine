#include "stdafx.h"
#include <stdio.h>
#include <conio.h>
 
using namespace System;
using namespace System::Runtime::InteropServices;
 
public class Win32 {
public:
	[DllImport("msvcr100.dll")]
	static int printf(String ^, ...);
	[DllImport("msvcr100.dll")]
	static int getchar();
	};
 
int main(array<String ^> ^args)
{
	printf("Hello World!\r\n");
	getchar();
	Console::WriteLine(L"Hello World!");
	Console::ReadKey();
	Console::Write("\n");
	Win32::printf("Hello World%c\r\n", '!');
	Win32::getchar();
	return 0;
}
 
// http://www.perrun.su
// alCoPaUL 2021++
