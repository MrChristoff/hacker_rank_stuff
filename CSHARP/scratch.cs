
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

// A very big sum

// When we add several integer values,
// the resulting sum might exceed the above range.
// You might need to use long long int in C/C++ or
// long data type in Java to store such sums.

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        int n = Convert.ToInt32(Console.ReadLine());
        string[] arr_temp = Console.ReadLine().Split(' ');
        int[] arr = Array.ConvertAll(arr_temp,Int32.Parse);
        long sum = 0; // 'long' instead of 'int'

        for (int i = 0; i < n; i++)
        {
            sum += arr[i];
            //Console.WriteLine(arr[i]);
        }

        Console.WriteLine(sum);

    }
}
//  Diagonal Difference
// Print the absolute difference between the two sums of the matrix's diagonals as a single integer.
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        int n = Convert.ToInt32(Console.ReadLine());
        int[][] a = new int[n][];
        for(int a_i = 0; a_i < n; a_i++){
           string[] a_temp = Console.ReadLine().Split(' ');
           a[a_i] = Array.ConvertAll(a_temp,Int32.Parse);
        }
        int primarySum = 0;
        int secondarySum = 0;
        int x = n - 1;
        int result;

        for (int i = 0; i < n; i++)


            {
                primarySum += a[i][i];
                secondarySum += a[i][x -i];
            }

        result = Math.Abs(primarySum - secondarySum);
            Console.Write(result);

/*
            Print item in multidimensional-array
            foreach(var item in a)
                {
                    Console.WriteLine();
                    foreach(var subItem in item)
                        {
                            Console.Write(subItem.ToString() + " ");
                        }
                }
*/
    }
}
// Plus minus
// display the fraction of items in the array that are: zeros, positives or negatives

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        int n = Convert.ToInt32(Console.ReadLine());
        string[] arr_temp = Console.ReadLine().Split(' ');
        int[] arr = Array.ConvertAll(arr_temp,Int32.Parse);
        int positives = 0;
        int negatives = 0;
        int zeros = 0;
        float floatN = (float)n;

        foreach(var item in arr)
            {
                if (item == 0)
                {
                    zeros++ ;
                }
            else
                {
                if (item < 0)
                    {
                        negatives++ ;
                    }
                else
                    {
                        positives++ ;
                    }
                }

            }
        Console.WriteLine((positives/floatN));
        Console.WriteLine((negatives/floatN));
        Console.WriteLine((zeros/floatN));
    }
}
