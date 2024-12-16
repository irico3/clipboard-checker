// See https://aka.ms/new-console-template for more information
using System;
using System.Windows.Forms;


class Program
{
    [STAThread]
    static void Main(string[] args)
    {
        try
        {
            IDataObject data = Clipboard.GetDataObject();

            if (data != null)
            {
                foreach (var format in data.GetFormats())
                {

                    Console.WriteLine(format);
                }
            }
            else
            {
                Console.WriteLine("クリップボードにデータがありません");

            }

        }
        catch (Exception ex)
        {
            Console.WriteLine($"An error occurred: {ex.Message}");
        }
        Console.ReadKey();


    }

}
