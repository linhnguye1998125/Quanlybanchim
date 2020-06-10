using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_them : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (!IsPostBack)
        {
            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "CK/ckfinder";
            _FileBrowser.SetupCKEditor(CKEditorControl1);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["TenDNAdmin"] == null)
            Response.Redirect("~/Admin/DangnhapAdmin.aspx");

        if (Session["TenDNAdmin"] != null)
        {
            try
            {
                string str1 = @"Select * from CHim Where HinhMinhHoa = '" + FileUpload1.FileName.ToString() + "'";
                if (CSDLBANCHIM.GetData(str1).Rows.Count > 0)
                {
                    lbThongBaoLoi.Text = "Sản phẩm đã tồn tại.";
                    lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
                    lbThongBaoLoi.Focus();
                }
                else
                {
                    SqlConnection con = new SqlConnection(CSDLBANCHIM.strCon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    //                    cmd.CommandText = @"INSERT INTO CHIM(TenSP,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaMenu,NgayCapNhat) 
                    //                                        VALUES(@TenSP,@DonViTinh,@DonGia,@MoTa,@HinhMinhHoa,@MaMenu,@NgayCapNhat)";
                    cmd.CommandText = @"INSERT INTO CHIM(Tengoi,DonGia,MoTa,Maloai,HinhMinhHoa,NgayCapNhat,SoLuongBan) 
                                        VALUES(@Tengoi,@DonGia,@MoTa,@Maloai,@HinhMinhHoa,@NgayCapNhat,@SoLuongBan)";
                    cmd.Parameters.Add("@Tengoi", SqlDbType.NVarChar, 100);
                    cmd.Parameters["@Tengoi"].Value = TextBox1.Text;

                    cmd.Parameters.Add("@DonGia", SqlDbType.Money);
                    cmd.Parameters["@DonGia"].Value = TextBox3.Text;
                    cmd.Parameters.Add("@MoTa", SqlDbType.NText);
                    cmd.Parameters["@MoTa"].Value = CKEditorControl1.Text;
                    cmd.Parameters.Add("@HinhMinhHoa", SqlDbType.VarChar, 50);
                    cmd.Parameters["@HinhMinhHoa"].Value = FileUpload1.FileName.ToString();
                    cmd.Parameters.Add("@Maloai", SqlDbType.Int);

                    cmd.Parameters["@Maloai"].Value = TextBox2.Text;
                    cmd.Parameters.Add("@SoLuongBan", SqlDbType.Int);

                    cmd.Parameters["@SoLuongBan"].Value = TextBox4.Text;
                    cmd.Parameters.Add("@NgayCapNhat", SqlDbType.SmallDateTime);
                    cmd.Parameters["@NgayCapNhat"].Value = DateTime.Now.ToShortTimeString();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox4.Text = "";
                    CKEditorControl1.Text = "";
                    TextBox3.Text = "";
                    lbThongBaoLoi.Text = "Thêm Sản Phẩm Mới Thành Công";
                    lbThongBaoLoi.ForeColor = System.Drawing.Color.Green;

                }
            }
            catch (Exception ex)
            {
                lbThongBaoLoi.Text = "Thêm SP mới thất bại.";
                lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
                throw ex;
            }
        }
    }
}