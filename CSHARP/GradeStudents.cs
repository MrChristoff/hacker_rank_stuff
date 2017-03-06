using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        int n = Convert.ToInt32(Console.ReadLine());
        for(int a0 = 0; a0 < n; a0++){
            int grade = Convert.ToInt32(Console.ReadLine());

            if (grade <= 34)
            {
                Console.WriteLine(grade);
            }
            else if(grade % 5 < 3)
            {
                Console.WriteLine(grade);
            }
            else
            {
                Console.WriteLine(Math.Ceiling(grade / 5.0) * 5);
            }

        }
    }
}
