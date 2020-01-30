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

public partial class ProductInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductName.Text = Request.QueryString["ProductName"];
        DataLayer dl = new DataLayer();
        Product p = dl.GetProductInfo("ProductName");
        lblDistributor.Text = p.shippingInfo.Distributor;
        lblShips.Text = p.shippingInfo.DaysToShip.ToString() + " days";

    }
}
