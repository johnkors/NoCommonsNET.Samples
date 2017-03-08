using System;
using NoCommons.Person;

namespace ConsoleDotNetCore1._0
{
    public class Program
    {
        public static void Main(string[] args)
        {            
			Console.WriteLine("[Microsoft.NETCore.App 1.0.0] : Hi, this is a fodselsnr: " + FodselsnummerValidator.IsValid("25010218228"));
            Console.ReadKey();
        }
    }
}
