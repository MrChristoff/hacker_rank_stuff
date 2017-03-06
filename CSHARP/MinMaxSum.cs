using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        string[] arr_temp = Console.ReadLine().Split(' ');
        int[] arr = Array.ConvertAll(arr_temp,Int32.Parse);
        int n = (arr.Length - 1);
        // List<int> totalsList = new List<int>(); *** has to hold type 'long' for calculations to be correct ***
        List<long> totalsList = new List<long>();

        // setup loop through array skipping an index value each time
        for (int i = 0; i <= n; i++ )
        {
            // add element - except skipped one
            int[] tempArr = new int[5];
            for (int x = 0; x <= n; x++ )
            {
              if (x != i)
              {
                tempArr.SetValue(arr[x], x);
              }
              else
              {
                tempArr.SetValue(0, x);
              }
            }

            // add sum of tempArr to the totals list
            // int sum = tempArr.Sum(); *** Overflow exception ***

            // int sum = 0; *** has to be type 'long' for correct calculations ***
            long sum = 0;
            foreach(var val in tempArr)
            {
                sum += val;
            }
            totalsList.Add(sum);
        }

        Console.WriteLine(totalsList.Min() + " " + totalsList.Max());
    }
}
