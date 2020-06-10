using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using QLBC;
using System.Data.SqlClient;
public partial class Admin_QLtin : System.Web.UI.Page
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
                    GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM TINTUC ");
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
    public void laytin()
    {
        GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM TINTUC ");
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        laytin();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        laytin();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int MaTin = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string sql = "Delete from TINTUC where MaTin=" + MaTin;



            CSDLBANCHIM.Execute(sql);
            laytin();
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
        laytin();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int MaTin = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

        string NoiDung = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
       
        string LuotXem = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        string TieuDe = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
        //  Response.Write("<script>alert('" + diachi + "')</script>");
        string sql = "update TINTUC set NoiDung = N'" + NoiDung + "',LuotXem = " + LuotXem + ",TieuDe = N'" + TieuDe + "'   where MaTin = " + MaTin + "";
        if (CSDLBANCHIM.ExcuteNonQueryTraVeGiaTri(sql) >= 0)
        {
            GridView1.EditIndex = -1;
            laytin();
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