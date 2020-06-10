using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data.SqlClient;
using System.Data;
public partial class UC_UCHeader : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        trahinh();
        DataList10.DataSource = CSDLBANCHIM.GetData("select * from PHANLOAI");
        DataList10.DataBind();
        if (Session["TenDN"] == null)
        {
            HyperLink2.Text = "";
            linkdangnhap.Visible = true;

            ImageButton3.Visible = false;

        }
        else
        {
            HyperLink2.Text = Session["TenDN"].ToString();
            linkdangnhap.Visible = false;
            linkdangky.Visible = false;
            //lbllayten.Visible = false;
            //linkdangxuat.Visible = false;
            //linkdangnhap.Visible = true;
            //linkdangky.Visible = true;
        }
    }
    protected void trahinh()
    {
        string sql = "select * from logo where trangthai=1";
        DataTable dt = CSDLBANCHIM.GetData(sql);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["TenDN"] != null)
        {
            Session["TenDN"] = null;
            HyperLink2.Text = "";
            linkdangnhap.Visible = true;
            ImageButton3.Visible = false;

            Response.Redirect("~/Trangchu.aspx");
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string tim = TextBox1.Text.Trim();
        if (tim == "")
        {
            Response.Write("<scrip>alert('Bạn phải nhập từ khoá >.<!...')</scrip>");
        }
        else
        {
            Response.Redirect("Timkiem.aspx?tim=" + tim);
        }
    }
}