using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["tb"] != null)
        {
            Label3.Text = "Your scored " + Request.QueryString["tot"] + " out of 5";
            GridView1.DataSource = (DataTable)(Session["tb"]);
            GridView1.DataBind();
            Session["tcod"] = null;
            Session["lvl"] = null;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            String s = GridView1.DataKeys[e.Row.RowIndex][0].ToString();
            String s1= GridView1.DataKeys[e.Row.RowIndex][1].ToString();
            Image img = (Image)(e.Row.FindControl("Image1"));
            if (s == s1)
                img.ImageUrl = "~/images/correct.jpg";
            else
                img.ImageUrl = "~/images/incorrect.jpg";
        }
    }
}