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
            if(Request.QueryString["qcod"]!=null)
            {
                nsskills.clsqst obj = new nsskills.clsqst();
                List<nsskills.clsqstprp> k = obj.fnd_rec(Convert.ToInt32(Request
                    .QueryString["qcod"]));
                TextBox1.Text = k[0].qstdsc;
                DropDownList1.DataBind();
                DropDownList1.SelectedIndex = -1;
                DropDownList1.Items.FindByValue(k[0].qstteccod.ToString())
                            .Selected = true;
                DropDownList2.SelectedIndex = -1;
                DropDownList2.Items.FindByValue(k[0].qstlvl.ToString())
                            .Selected = true;
                Button1.Text = "Update";
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsskills.clsqst obj = new nsskills.clsqst();
        nsskills.clsqstprp objprp = new nsskills.clsqstprp();
        objprp.qstteccod = Convert.ToInt32(DropDownList1.SelectedValue);
        objprp.qstlvl = Convert.ToChar(DropDownList2.SelectedValue);
        objprp.qstdsc = TextBox1.Text;
        objprp.qstdat = DateTime.Now;
        if(Button1.Text=="Submit")
            obj.save_rec(objprp);
        else
        {
            objprp.qstcod = Convert.ToInt32(Request.QueryString["qcod"]);
            obj.upd_rec(objprp);
        }
        Response.Redirect("frmqstbnk.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmqstbnk.aspx");
    }
}