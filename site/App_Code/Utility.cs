using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

/// <summary>
/// Summary description for Utility
/// </summary>
public class Utility
{
	public Utility()
	{
	}

    public static void WriteToLog(string message, string fileName)
    {
        try
        {
            using (StreamWriter sw = new StreamWriter(fileName))
            {
                //Log the event with date and time.
                sw.WriteLine("--------------------------");
                sw.WriteLine(DateTime.Now.ToLongTimeString());
                sw.WriteLine("-------------------");
                sw.WriteLine(message);
            }
        }
        catch (Exception ex)
        {
            ExceptionHandler.LogException(ex);
        }
    }
}
