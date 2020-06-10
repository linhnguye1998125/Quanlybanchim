using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data;
using System.Data.SqlClient;
public partial class Dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i < 32; i++)
        {
            DropDownList1.Items.Add(i.ToString());
        }
        for (int i = 1; i < 13; i++)
        {
            DropDownList2.Items.Add(i.ToString());
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"select 1 from Khachhang where TenDN=N'" + txtTenDN.Text + "'";
            if (CSDLBANCHIM.GetData(str1).Rows.Count > 0)
            {
                lbThongbaoloi.Text = "Tên đăng nhập đã tồn tại";
                txtTenDN.Focus();
            }
            else
            {

                SqlConnection con = new SqlConnection(CSDLBANCHIM.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO KHACHHANG (HoTenKH,DiaChiKH,DienThoaiKH,Email,TenDN,MatKhau,NgaySinh,GioiTinh) VALUES (@Hoten,@Diachi,@Dienthoai,@Email,@TenDN,@Matkhau,@Ngaysinh,@Gioitinh)";
                cmd.Parameters.Add("@Hoten", SqlDbType.NVarChar, 50);
                cmd.Parameters["@Hoten"].Value = txbTen.Text;
                cmd.Parameters.Add("@Diachi", SqlDbType.NVarChar, 50);
                cmd.Parameters["@Diachi"].Value = txbDiachi.Text;
                cmd.Parameters.Add("@Dienthoai", SqlDbType.VarChar, 10);
                cmd.Parameters["@Dienthoai"].Value = txbSdt.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                cmd.Parameters.Add("@Matkhau", SqlDbType.VarChar, 15);
                cmd.Parameters["@Matkhau"].Value = txbMatkhau.Text;
                cmd.Parameters.Add("@Ngaysinh", SqlDbType.SmallDateTime);
                cmd.Parameters["@Ngaysinh"].Value = DateTime.Parse(txbNam.Text + "-" + DropDownList2.Text + "-" + DropDownList1.Text);
                cmd.Parameters.Add("@Gioitinh", SqlDbType.Int);
                cmd.Parameters["@Gioitinh"].Value = Convert.ToInt16(rdGioiTinh.SelectedItem.Value);
                // cmd.Parameters["@Gioitinh"].Value = Convert.ToInt16(rdGioiTinh.SelectedItem.Value.Equals("Nam") ? 1 : 0);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/DangNhap.aspx");
            }
        }
        catch
        {
            lbThongbaoloi.Text = "Thất bại!";
        }
    }
}