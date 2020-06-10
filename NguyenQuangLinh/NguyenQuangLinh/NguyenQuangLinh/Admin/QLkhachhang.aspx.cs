using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data.SqlClient;
public partial class Admin_QLkhachhang : System.Web.UI.Page
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
                    string MaKH = Request.QueryString["MaKH"];
                    GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM KHACHHANG ");
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
    public void layKH()
    {
        GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM KHACHHANG ");
        GridView1.DataBind();
    }
    public void CapnhatNXB()
    {

        GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM KHACHHANG ");
        GridView1.DataBind();
    }
    public string ChecGT(object obj)
    {
        bool b = bool.Parse(obj.ToString());
        if (b)
            return " Nam ";
        else
            return "Nữ";
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        layKH();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        layKH();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int MaKH = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string sql = "Delete from KHACHHANG where MaKH=" + MaKH;
 

        
            CSDLBANCHIM.Execute(sql);
            CapnhatNXB();
            Response.Write("<script> alert('Bạn đã xóa thành công')</script>");
        }
        catch
        {
            Response.Write("<script> alert('Xóa không thành công')</script>");
        }

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        layKH();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        


        int MaKH = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

        string HoTenKH = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
        string NgaySinh = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        string GioiTinh = (GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
        string DiaChiKH = (GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
        string DienThoaiKH = (GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
        string Email = (GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
        //  Response.Write("<script>alert('" + diachi + "')</script>");
        string sql = "update KHACHHANG set HoTenKH = N'" + HoTenKH + "' , NgaySinh = " + NgaySinh + ",DiaChiKH = N'" + DiaChiKH + "' , DienThoaiKH = " + DienThoaiKH + ", Email="+ Email + " + where MaKH = " + MaKH + "";
        if (CSDLBANCHIM.ExcuteNonQueryTraVeGiaTri(sql) >= 0)
        {
            GridView1.EditIndex = -1;
            layKH();
            Response.Write("<script> alert('Bạn cập nhật thành công')</script>");
        }
        else
        {
            Response.Write("<script> alert('Cập nhật không thành công')</script>");
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}