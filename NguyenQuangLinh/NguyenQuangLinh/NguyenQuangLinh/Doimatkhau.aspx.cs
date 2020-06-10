using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using QLBC;

public partial class Doimatkhau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        try
        {



            DataTable cmd = CSDLBANCHIM.GetData(@"Select TenDN From KHACHHANG where TenDN='" + txtusername.Text + "' and Matkhau='" + txtpasswork.Text + " '");
            if (cmd.Rows.Count > 0)
            {
                CSDLBANCHIM.ExcuteNonQueryTraVeGiaTri("UPDATE KhachHang Set Matkhau = '" + txtmatkhaumoi.Text + "' WHERE TenDN = '" + txtusername.Text + "'");


                lblThongbao.Text = "Đổi mật khẩu thành công";
                Response.Redirect("~/DangNhap.aspx");
            }
            else
            {
                lblThongbao.Text = " đăng nhập hoặc mật khẩu cũ không hợp lệ!";
            }

        }
        catch
        {
            lblThongbao.Text = "Thất bại!";

        }
    }
}