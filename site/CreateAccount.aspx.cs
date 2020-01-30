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

public partial class CreateAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        DataSet dsUsers = ((DataLayer)Application["DataLayer"]).GetAllUsers();
        DataRow[] rows = dsUsers.Tables[0].Select("UserName = '" + txtUserName.Text + "'");
        if (rows.Length <= 0)
        {
            lblResult.Text = "Welcome " + txtFirstName.Text + " " + txtLastName.Text;
            //logic for adding the user would go here
        }
        else
            lblResult.Text = "Sorry, the username " + txtUserName.Text + " is already taken";
    }
}
