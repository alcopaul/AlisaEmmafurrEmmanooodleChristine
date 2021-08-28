using System;
using System.Runtime.InteropServices;

namespace PInvokeTest
{
    class Program
    {
        [DllImport("msvcr100.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern int printf(string a, char b);
        [DllImport("msvcr100.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern int getchar();

        public static void Main()
        {
            printf("Hello World%c\r\n", '!');
            int c = getchar();
        }
    }
}

/* http://www.perrun.su */
//msvcr110.dll
