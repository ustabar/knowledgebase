using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Reviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Review rev = new Review();
            rev.GenerateReview1();
            lblReview1.Text = "<I>" + rev.quote + "</I>";
            lblSource1.Text = "&nbsp;&nbsp;-" + rev.source;
            rev.ClearReview();

            Review rev2 = new Review();
            rev2.GenerateReview2();
            lblReview2.Text = "<I>" + rev2.quote + "</I>";
            lblSource2.Text = "&nbsp;&nbsp;-" + rev2.source;
            rev2.ClearReview();
        }
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        GC.Collect();
        GC.WaitForPendingFinalizers();
        GC.Collect();

        Review rev = new Review();
        rev.GenerateReview1();
        lblReview1.Text = "<I>" + rev.quote + "</I>";
        lblSource1.Text = "&nbsp;&nbsp;-" + rev.source;
        rev.ClearReview();

        Review rev2 = new Review();
        rev2.GenerateReview2();
        lblReview2.Text = "<I>" + rev2.quote + "</I>";
        lblSource2.Text = "&nbsp;&nbsp;-" + rev2.source;
        rev2.ClearReview();
    }
}
