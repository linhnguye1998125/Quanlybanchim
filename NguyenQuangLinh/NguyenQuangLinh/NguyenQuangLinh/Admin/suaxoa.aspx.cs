using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;

public partial class Admin_suaxoa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            try
            {
                if (Session["TenDNAdmin"] == null)
                    Response.Redirect("~/Admin/DangnhapAdmin.aspx");

                if (Session["TenDNAdmin"] != null)
                {
                    string MaChim = Request.QueryString["MaChim"];
                    GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM CHIM ");
                    GridView1.DataBind();
                    //laynhaxuatban();
                    //CapnhatNXB();
                    ViewState["SortDirection"] = SortDirection.Ascending;
                }
            }
            catch
            {
            }
        }
    }
    public void CapnhatNXB()
    {

        GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM CHIM ");
        GridView1.DataBind();
    }
    public void layChim()
    {
        GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM CHIM ");
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        layChim();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int MaChim = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

        string Tengoi = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
        string DonGia = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        string MoTa = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
        string HinhMinhHoa = (GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
        string SoLuongBan = (GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
        //  Response.Write("<script>alert('" + diachi + "')</script>");
        string sql = "update CHIM set Tengoi = N'" + Tengoi + "' , DonGia = " + DonGia + " , MoTa = N'" + MoTa + "',HinhMinhHoa = '" + HinhMinhHoa + "' , SoLuongBan = " + SoLuongBan + " where MaChim = " + MaChim + "";
        if (CSDLBANCHIM.ExcuteNonQueryTraVeGiaTri(sql) >= 0)
        {
            GridView1.EditIndex = -1;
            layChim();
            Response.Write("<script> alert('Bạn cập nhật thành công')</script>");
        }
        else
        {
            Response.Write("<script> alert('Cập nhật không thành công')</script>");
        }
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        layChim();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        layChim();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
        try
        {
            int MaChim = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string sql = "Delete from Chim where MaChim=" + MaChim;
            string sql1 = "Delete from BINHLUAN where MaChim=" + MaChim;
           
            CSDLBANCHIM.Execute(sql1);
            CSDLBANCHIM.Execute(sql);
            CapnhatNXB();
            Response.Write("<script> alert('Bạn đã xóa thành công')</script>");
        }
        catch
        {
            Response.Write("<script> alert('Xóa không thành công')</script>");
        }   

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}