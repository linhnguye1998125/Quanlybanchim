using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_UC_admin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        trahinh();
        if (Session["TenDNAdmin"] == null)
        {
            HyperLink2.Text = "";
            Button1.Visible = true;

            Button2.Visible = false;


        }
        else
        {
            HyperLink2.Text ="Xin chào  "+  Session["TenDNAdmin"].ToString();
            Button1.Visible = false;
            //lbllayten.Visible = false;
            //linkdangxuat.Visible = false;
            //linkdangnhap.Visible = true;
            //linkdangky.Visible = true;
        }
    }
    protected void trahinh()
    {
        string sql = "select * from LOGO where trangthai=0";
        DataTable dt = CSDLBANCHIM.GetData(sql);
        Repeater2.DataSource = dt;
        Repeater2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["TenDNAdmin"] != null)
        {
            Session["TenDNAdmin"] = null;
            HyperLink2.Text = "";
            Button1.Visible = true;
            Button2.Visible = false;

            Response.Redirect("~/Admin/Default.aspx");
        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}