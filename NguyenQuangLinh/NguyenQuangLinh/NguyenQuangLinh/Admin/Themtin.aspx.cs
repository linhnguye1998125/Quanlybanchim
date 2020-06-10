using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Themtin : System.Web.UI.Page
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

                SqlConnection con = new SqlConnection(CSDLBANCHIM.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                //                    cmd.CommandText = @"INSERT INTO CHIM(TenSP,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaMenu,NgayCapNhat) 
                //                                        VALUES(@TenSP,@DonViTinh,@DonGia,@MoTa,@HinhMinhHoa,@MaMenu,@NgayCapNhat)";
                cmd.CommandText = @"INSERT INTO TINTUC(TieuDe,NoiDung,LuotXem,NgayDang) 
                                        VALUES(@TieuDe,@NoiDung,@LuotXem,@NgayDang)";
                cmd.Parameters.Add("@TieuDe", SqlDbType.NVarChar, 200);
                cmd.Parameters["@TieuDe"].Value = TextBox1.Text;

                cmd.Parameters.Add("@NoiDung", SqlDbType.NVarChar, 500);
                cmd.Parameters["@NoiDung"].Value = CKEditorControl1.Text;

                cmd.Parameters.Add("@LuotXem", SqlDbType.Int);
                cmd.Parameters["@LuotXem"].Value = 0;

                cmd.Parameters.Add("@NgayDang", SqlDbType.SmallDateTime);
                cmd.Parameters["@NgayDang"].Value = DateTime.Now.ToShortTimeString();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";

                CKEditorControl1.Text = "";

                lbThongBaoLoi.Text = "Thêm Sản Phẩm Mới Thành Công";
                lbThongBaoLoi.ForeColor = System.Drawing.Color.Green;


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