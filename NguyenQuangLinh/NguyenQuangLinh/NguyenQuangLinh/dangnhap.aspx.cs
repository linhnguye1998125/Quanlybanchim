using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data;
using System.Data.SqlClient;
public partial class dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        DataTable cmd = CSDLBANCHIM.GetData(@"Select TenDN,MatKhau from KHACHHANG where TenDN='" + user.Text + "' and  MatKhau='" + password.Text + "'");

        if (cmd.Rows.Count > 0)
        {

            Session["TenDN"] = user.Text;
            lblThongbao.Text = "Bạn đã đăng nhập thành công";
            Response.Redirect("~/Trangchu.aspx");

        }
        else
        {
            lblThongbao.Text = "Bạn đăng nhập sai tên hoặc mật khẩu! Xin vui lòng kiểm tra lại";
        }
    }
}