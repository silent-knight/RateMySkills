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

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsskills.clstec obj = new nsskills.clstec();
        nsskills.clstecprp objprp = new nsskills.clstecprp();
        objprp.tecnam = txttec.Text;
        if (Button1.Text == "Submit")
            obj.save_rec(objprp);
        else
        {
            objprp.teccod = Convert.ToInt32(ViewState["cod"]);
            obj.upd_rec(objprp);
            Button1.Text = "Submit";
        }
        txttec.Text = String.Empty;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsskills.clstec obj = new nsskills.clstec();
        nsskills.clstecprp objprp = new nsskills.clstecprp();
        objprp.teccod = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        obj.del_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        nsskills.clstec obj = new nsskills.clstec();
        List<nsskills.clstecprp> k = obj.fnd_rec(Convert.ToInt32(GridView1
            .DataKeys[e.NewEditIndex][0]));
        txttec.Text = k[0].tecnam;
        Button1.Text = "Update";
        ViewState["cod"] = k[0].teccod;
        e.Cancel = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txttec.Text = String.Empty;
        Button1.Text = "Submit";
    }
}