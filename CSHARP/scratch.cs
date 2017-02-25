
// compare the triplets
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        string[] tokens_a0 = Console.ReadLine().Split(' ');
        int a0 = Convert.ToInt32(tokens_a0[0]);
        int a1 = Convert.ToInt32(tokens_a0[1]);
        int a2 = Convert.ToInt32(tokens_a0[2]);
        string[] tokens_b0 = Console.ReadLine().Split(' ');
        int b0 = Convert.ToInt32(tokens_b0[0]);
        int b1 = Convert.ToInt32(tokens_b0[1]);
        int b2 = Convert.ToInt32(tokens_b0[2]);

        int n = tokens_a0.Length;
        int setA = 0;
        int setB = 0;

        for (int i = 0; i < n ; i++ )
        {
            int itemA = Convert.ToInt32(tokens_a0[i]);
            int itemB = Convert.ToInt32(tokens_b0[i]);

            if ( itemA > itemB )
             {
                setA++;
             }
            else
            {
                if (itemB > itemA)
                {
                    setB++;
                }
            }
        }
        Console.Write(setA + " " + setB);
    }
}
