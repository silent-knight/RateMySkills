using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["log"]=="lol")
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
    }
}
