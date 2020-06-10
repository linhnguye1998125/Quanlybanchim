using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data;
using System.Data.SqlClient;
public partial class ChiTiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
           
                string danhgia = txtdanhgia.Text.Trim();

                string kkk = "select * from DANHGIA where Masao= N'" + danhgia + "'";
                DataTable dt = CSDLBANCHIM.GetData(kkk);
                Repeater3.DataSource = dt;
                Repeater3.DataBind();


                string MaChim = Request.QueryString["MaChim"];

                Repeater1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM CHIM where MaChim=" + MaChim);
                Repeater1.DataBind();



                DataList.DataSource = CSDLBANCHIM.GetData(@"SELECT TOP 3 * from CHIM ORDER BY NEWID()");
                DataList.DataBind();

                Repeater2.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM BINHLUAN where MaChim=" + MaChim);
                Repeater2.DataBind();
            
        
    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (Session["TenDN"] == null)
        {
            Response.Redirect("~/dangnhap.aspx");
        }
        else
        {
            string MaChim = Request.QueryString["MaChim"];
            SqlConnection con = new SqlConnection(CSDLBANCHIM.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            //                    cmd.CommandText = @"INSERT INTO CHIM(TenSP,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaMenu,NgayCapNhat) 
            //                                        VALUES(@TenSP,@DonViTinh,@DonGia,@MoTa,@HinhMinhHoa,@MaMenu,@NgayCapNhat)";
            cmd.CommandText = @"INSERT INTO BINHLUAN(NgayDang,NoiDungbinhluan,MaChim,TenDN) 
                                        VALUES(@NgayDang,@NoiDungbinhluan,@MaChim,@TenDN)";
            cmd.Parameters.Add("@NgayDang", SqlDbType.SmallDateTime);
            cmd.Parameters["@NgayDang"].Value = DateTime.Now.ToShortTimeString();
            cmd.Parameters.Add("@NoiDungbinhluan", SqlDbType.NText);
            cmd.Parameters["@NoiDungbinhluan"].Value = txtnoidung.Text;
            cmd.Parameters.Add("@MaChim", SqlDbType.Int);
            cmd.Parameters["@MaChim"].Value = MaChim;
            cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
            cmd.Parameters["@TenDN"].Value = Session["TenDN"].ToString();
            cmd.ExecuteNonQuery();
            con.Close();
            Repeater2.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM BINHLUAN where MaChim=" + MaChim);
            Repeater2.DataBind();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        txtdanhgia.Text = "";
    }
}