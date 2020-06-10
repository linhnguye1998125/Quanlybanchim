using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data;
using System.Data.SqlClient;
public partial class Thanhtoan : System.Web.UI.Page
{
    private int MaKH;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/dangnhap.aspx");
            if (Session["GioHang"] == null)
                Response.Redirect("~/Giohang.aspx");
            if (Session["TenDN"] != null)
            {
               // string s = @"select MaKH,HoTenKH,DiaChiKH,DienThoaiKH,Email from KHACHHANG where TenDN ='" + Session["TenDN"].ToString() + "'";
                DataTable dt = CSDLBANCHIM.GetData("select MaKH,HoTenKH,DiaChiKH,DienThoaiKH,Email from KHACHHANG where TenDN ='" + Session["TenDN"].ToString() + "'");
                if (dt.Rows.Count > 0)
                {
                    lbHoTen.Text = dt.Rows[0][1].ToString();
                    lbDiaChi.Text = dt.Rows[0][2].ToString();
                    lbDienThoai.Text = dt.Rows[0][3].ToString();
                    lbEmail.Text = dt.Rows[0][4].ToString();
                    txtNguoiNhan.Text = dt.Rows[0][1].ToString();
                    txtDiaChi.Text = dt.Rows[0][2].ToString();
                    txtDienThoai.Text = dt.Rows[0][3].ToString();
                }
            }
            if (Session["GioHang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Decimal tongthanhtien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                    tongthanhtien += Convert.ToDecimal(r["Thanhtien"]);
                    lbTongTien.Text = tongthanhtien.ToString();
                }
                gvGioHang.DataSource = dt;
                gvGioHang.DataBind();
            }
            calNgayGiao.SelectedDate = DateTime.Today;

        }
    }
    protected void btDongY_Click(object sender, EventArgs e)
        {
          //  string str = @"select MaKH from KHACHHANG where TenDN ='" + Session["TenDN"].ToString() + "'";
            DataTable dt1 = new DataTable();
            dt1 = CSDLBANCHIM.GetData("select MaKH from KHACHHANG where TenDN ='" + Session["TenDN"].ToString() + "'");
            MaKH = int.Parse(dt1.Rows[0][0].ToString());
            int httt = 0, htgh = 0;
            string TenNguoiNhan, DiaChiNhan, DienThoaiNhan;
            TenNguoiNhan = txtNguoiNhan.Text;
            DiaChiNhan = txtNguoiNhan.Text;
            DienThoaiNhan = txtDienThoai.Text;
            decimal tongthanhtien = decimal.Parse(lbTongTien.Text);
            httt = Convert.ToInt32(rblHinhThucThanhToan.SelectedItem.Value);
            htgh = Convert.ToInt32(rblhinhThucGiaoHang.SelectedItem.Value);
      
            try
            {
                SqlConnection con = new SqlConnection(CSDLBANCHIM.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into DONDATHANG(MaKH,NgayDH,TriGia,NgayGiaoHang,TenNguoiNhan,DiaChiNhan,DienThoaiNhan,ThanhToan,Phuongthuc)
                Values(" + MaKH + ",@ngaydathang," + tongthanhtien + ",@NgayGiaoHang,N'" + TenNguoiNhan + "',N'" + DiaChiNhan + "','" + DienThoaiNhan + "'," + httt + "," + htgh + ")";
                cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngaydathang"].Value = DateTime.Now;
                cmd.Parameters.Add("@NgayGiaoHang", SqlDbType.SmallDateTime);
                cmd.Parameters["@NgayGiaoHang"].Value = calNgayGiao.SelectedDate;
                cmd.ExecuteNonQuery();
                con.Close();

                //laymadonhang
               string s = @"Select max(SoDH) from  DONDATHANG Where MaKH =" + MaKH;
                int SODONHANG = int.Parse(CSDLBANCHIM.GetData(s).Rows[0][0].ToString());
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                int MaChim, SoLuong;
                Decimal DonGia;
                /* Luu san pham vao table CTDATHANG */
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    MaChim = int.Parse(dt.Rows[i]["MaChim"].ToString());
                    SoLuong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                    DonGia = Decimal.Parse(dt.Rows[i]["DonGia"].ToString());           
                    s = "INSERT INTO CTDATHANG(SoDH,MaChim,SoLuong,DonGia) VALUES(" + SODONHANG + "," + MaChim + "," + SoLuong + "," + DonGia + ")";
                    CSDLBANCHIM.Execute(s);
                }
                /* xoa gio hang sau khi da thuc hien xong dat hang*/
                Session["GioHang"] = null;
            /*Sau khi dat hang se chuyen toi trang XAc nhan don hang */
            //Response.Redirect("~/Xacnhandonhang.aspx");
            lbThongBaoLoi.Text = "Thanh toán thành công!";
        }
            catch
            {
                lbThongBaoLoi.Text = "Lỗi trong quá trình cập nhật dữ liệu!";
       

        }
        
    }
}