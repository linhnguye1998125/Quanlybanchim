using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;

using System.Data.SqlClient;
public partial class Thongtinkhachhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("~/Dangnhap.aspx");
            }
            else
            {
                laydulieu();
            }
        }
    }
    private void laydulieu()
    {
        DataTable dt = new DataTable();
        dt = CSDLBANCHIM.GetData("select * from KHACHHANG where TenDN='" + Session["TenDN"].ToString() + "'");
        txtHoTen.Text = dt.Rows[0][1].ToString();
        bool GioiTinh = Boolean.Parse(dt.Rows[0][7].ToString());
        if (GioiTinh == true)
        {
            rblGioiTinh.SelectedValue = "Nam";
        }
        else
        {
            rblGioiTinh.SelectedValue = "Nữ";
        }
        DateTime ngaysinh = Convert.ToDateTime(dt.Rows[0][6].ToString());
        txtNgaySinh.Text = ngaysinh.ToString("dd/MM/yyyy");
        txtDiaChi.Text = dt.Rows[0][2].ToString();
        txtSoDienThoai.Text = dt.Rows[0][3].ToString();
    }
    protected void txtCapNhat_Click(object sender, EventArgs e)
    {
        try
        {
            int gioitinh = Convert.ToInt16(rblGioiTinh.SelectedItem.Value.Equals("Nam") ? 1 : 0);
            string str1 = @"Update KHACHHANG set HoTenKH= N'" + txtHoTen.Text.Trim() + "', GioiTinh= " + gioitinh + " WHERE TenDN = '" + Session["TenDN"].ToString() + "'";
            CSDLBANCHIM.Execute(str1);
            lbThongBao.Text = "Cập nhật thành công!";
           
        }
        catch
        {
            lbThongBao.Text = "Cập nhật thất bại";
            
        }
    }
}