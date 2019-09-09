using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsskills.clsreg obj = new nsskills.clsreg();
        nsskills.clsregprp objprp = new nsskills.clsregprp();
        objprp.regeml = txtregeml.Text;
        objprp.regpwd = txtpwd.Text;
        objprp.regdat = DateTime.Now;
        objprp.regsts = 'U';
        try
        {
            obj.save_rec(objprp);
            Label1.Text = "Registration Successful";
            txtregeml.Text = String.Empty;
        }
        catch(Exception exp)
        {
            Label1.Text = "Email ID already registered";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        nsskills.clsreg obj = new nsskills.clsreg();
        char rol;
        Int32 cod;
        cod = obj.logincheck(txteml.Text, txtpwd1.Text, out rol);
        txteml.Text = String.Empty;
        if (cod == -2)
            Label2.Text = "Password Incorrect.";
        else if (cod == -1)
            Label2.Text = "Email ID not registered.";
        else
        {
            Session["ucod"] = cod;
            if (rol == 'A')
                Response.Redirect("admin/frmtec.aspx");
            else
                Response.Redirect("frmstrtst.aspx");
        }

    }
}
