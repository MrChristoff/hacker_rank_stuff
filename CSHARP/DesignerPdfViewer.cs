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
        int result;
        List<int> charSizes = new List<int>();

        // populate alphabet dictionary
        for (char c = 'a'; c <= 'z'; c++)
        {
            alphabet.Add(c, index);
            index++;
        }

        // populate charSizes List
        foreach (char c in word)
        {
          int i = letterIndex(c, alphabet);
          int hVal = letterHeight(i, h);
          charSizes.Add(hVal);

        }

        result = totalArea(n, charSizes);
        Console.WriteLine(result);

    }

    static int letterIndex(char letter, Dictionary<char, int> alphabetDictionary)
    {
      return alphabetDictionary[letter];
    }

    static int letterHeight(int hIndex, int[] heightArr)
    {
      return heightArr[hIndex];
    }

    static int totalArea(int length, List<int> charHeights)
    {
      int cMax = charHeights.Max();
      return length * cMax;
    }
}
