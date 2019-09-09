using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsskills.clsqst obj = new nsskills.clsqst();
        nsskills.clsqstprp objprp = new nsskills.clsqstprp();
        objprp.qstcod = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        obj.del_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }

    
}