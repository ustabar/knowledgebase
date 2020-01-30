using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Threading;

public partial class FeaturedProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.DateTime start = System.DateTime.Now;
	// Thread.Sleep(5000);

	Trace.Write("Deneme--1");
	Trace.Warn("Deneme--2");

        if (!Page.IsPostBack)
        {
            Trace.Write("In the postback method, before the GetFeaturedProducts request");
            DataView dw = new DataView(((DataLayer)Application["DataLayer"]).GetFeaturedProducts());
            dlFeatured.DataSource = dw;
            Trace.Write("Before databinding");
            dlFeatured.DataBind();
            Trace.Write("After databinding");
        }

        System.DateTime end = System.DateTime.Now;
        lblStartTime.Text = start.ToLongTimeString();
        string time = end.Subtract(start).Seconds + "." + end.Subtract(start).Milliseconds;
        lblExecutionTime.Text = end.Subtract(start).Seconds + "." + end.Subtract(start).Milliseconds;
        Trace.Warn("It took " + time + " to execute page_load");
    }
}
