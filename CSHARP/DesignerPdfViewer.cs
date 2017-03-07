using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args)
    {
        string[] h_temp = "1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5".Split(' ');
        int[] h = Array.ConvertAll(h_temp,Int32.Parse);
        string word = Console.ReadLine();
        Dictionary<char, int> alphabet = new Dictionary<char, int>();
        int index = 0;
        int n = word.Length;
        int[] charSizes = new int[n];

        // populate alphabet dictionary
        for (char c = 'a'; c <= 'z'; c++)
        {
            alphabet.Add(c, index);
            index++;
        }

        Console.WriteLine(letterIndex("z", alphabet));
        Console.WriteLine(letterHeight(letterIndex("z", alphabet), h));


    }
    static int letterIndex(string letter, Dictionary<char, int> alphabetDictionary)
        {
            return alphabetDictionary[Convert.ToChar(letter)];
        }

    static int letterHeight(int hIndex, int[] heightArr)
    {
        return heightArr[hIndex];
    }
}
