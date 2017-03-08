using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args)
    {
        string[] tokens_s = Console.ReadLine().Split(' ');
        int houseStart = Convert.ToInt32(tokens_s[0]);
        int houseEnd = Convert.ToInt32(tokens_s[1]);
        string[] tokens_a = Console.ReadLine().Split(' ');
        int appleTreePos = Convert.ToInt32(tokens_a[0]);
        int orangeTreePos = Convert.ToInt32(tokens_a[1]);
        string[] tokens_m = Console.ReadLine().Split(' ');
        int appleNum = Convert.ToInt32(tokens_m[0]);
        int orangeNum = Convert.ToInt32(tokens_m[1]);
        string[] apple_temp = Console.ReadLine().Split(' ');
        int[] apple = Array.ConvertAll(apple_temp,Int32.Parse);
        string[] orange_temp = Console.ReadLine().Split(' ');
        int[] orange = Array.ConvertAll(orange_temp,Int32.Parse);
        int appleCount = 0;
        int orangeCount = 0;

        foreach(int fruitPosition in apple)
        {
          if (appleTreePos + fruitPosition >= houseStart && appleTreePos + fruitPosition <= houseEnd )
          {
            appleCount++ ;
            // Console.WriteLine(appleCount);
          }
        }

        foreach(int fruitPosition in orange)
        {
          if (orangeTreePos + fruitPosition >= houseStart && orangeTreePos + fruitPosition <= houseEnd )
          {
            orangeCount++ ;
            // Console.WriteLine(appleCount);
          }
        }


        Console.WriteLine(appleCount);
        Console.WriteLine(orangeCount);

    }
}
