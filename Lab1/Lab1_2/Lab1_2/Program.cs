using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Diagnostics;
using System.IO;
using CsvHelper;

namespace Lab1_2
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var streamReader = new StreamReader("db.csv"))
            {
                var reader = new CsvReader(streamReader);

                var records = reader.GetRecords<DataRow>().ToList();

                string input = "";
                while(true)
                {
                    Console.Write("Enter username: ");
                    input = Console.ReadLine();

                    if (input == null)
                    {
                        break;
                    }                    

                    var result = from DataRow record in records
                                 where record.author.Equals(input)
                                 select record.id;                    

                    foreach (var index in result)
                    {
                        Console.WriteLine(index);
                    }
                }
            }
        }
    }
}