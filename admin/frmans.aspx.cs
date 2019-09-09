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
        if(Page.IsPostBack==false )
        {
            if (Request.QueryString["qcod"] == null)
                Response.Redirect("frmqstbnk.aspx");
            else
            {
                nsskills.clsqst obj = new nsskills.clsqst();
                List<nsskills.clsqstprp> k = obj.fnd_rec(Convert.ToInt32(Request
                    .QueryString["qcod"]));
                Literal1.Text = k[0].qstdsc;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsskills.clsans obj = new nsskills.clsans();
        nsskills.clsansprp objprp = new nsskills.clsansprp();
        objprp.ansdsc = TextBox1.Text;
        objprp.ansqstcod = Convert.ToInt32(Request.QueryString["qcod"]);
        if (CheckBox1.Checked == true)
            objprp.anssts = 'T';
        else
            objprp.anssts = 'F';
       if(Button1.Text== "Submit")
        {
            obj.save_rec(objprp);
        }
       else
        {
            objprp.anscod = Convert.ToInt32(ViewState["cod"]);
            obj.upd_rec(objprp);
            Button1.Text = "Submit";
        }
        TextBox1.Text = String.Empty;
        CheckBox1.Checked = false;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsskills.clsans obj = new nsskills.clsans();
        nsskills.clsansprp objprp = new nsskills.clsansprp();
        objprp.anscod = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        obj.del_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        nsskills.clsans obj = new nsskills.clsans();
     List<nsskills.clsansprp> k = obj.fnd_rec(Convert.ToInt32(GridView1.DataKeys
            [e.NewEditIndex][0]));
        TextBox1 .Text = k[0].ansdsc;
        if (k[0].anssts == 'T')
            CheckBox1.Checked = true;
        else
            CheckBox1.Checked = false;
        Button1.Text = "Update";
        ViewState["cod"] = k[0].anscod;
        e.Cancel = true;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        CheckBox1.Checked = false;
        Button1.Text = "Submit";
    }
}