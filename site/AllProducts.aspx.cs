using System;
using System.Text;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class AllProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // StringBuilder sb = new StringBuilder();
        // sb.Append("<table><tr><td><B>Product ID</B></td><td><B>Product Name</B></td><td><B>Description</B></td></tr>");

        DataTable dt = ((DataLayer)Application["DataLayer"]).GetAllProducts();
        // string ProductsTable = string.Empty; 
        // "<table><tr><td><B>Product ID</B></td><td><B>Product Name</B></td><td><B>Description</B></td></tr>";
	
	string ProductsTable = "<table><tr><td><B>Product ID</B></td><td><B>Product Name</B></td><td><B>Description</B></td></tr>";

        foreach (DataRow dr in dt.Rows)
        {
            ProductsTable += "<tr><td>" + dr[0] + "</td><td>" + dr[1] + "</td><td>" + dr[2] + "</td></tr>";
            /*
	    sb.Append("<tr><td>");
            sb.Append(dr[0]);
            sb.Append("</td><td>");
            sb.Append(dr[1]);
            sb.Append("</td><td>");
            sb.Append(dr[2]);
            sb.Append("</td></tr>");
	    */
        }

        // sb.Append("</table>");
        // ProductsTable = sb.ToString();
        ProductsTable += "</table>";
        tblProducts.Text = ProductsTable;
    }

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    DataTable dt = ((DataLayer)Application["DataLayer"]).GetAllProducts();
    //    System.Text.StringBuilder test = new System.Text.StringBuilder("<table><tr><td><B>Product ID By SB</B></td><td><B>Product Name</B></td><td><B>Description</B></td></tr>");

    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        test.Append("<tr><td>");
    //        test.Append(dr[0]);
    //        test.Append("</td><td>");
    //        test.Append(dr[1]);
    //        test.Append("</td><td>");
    //        test.Append(dr[2]);
    //        test.Append("</td></tr>");

    //    }
    //    test.Append("</table>");
    //    tblProducts.Text = test.ToString();
    //}
}
