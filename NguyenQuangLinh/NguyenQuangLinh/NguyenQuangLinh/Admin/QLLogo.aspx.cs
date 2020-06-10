using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data.SqlClient;

public partial class Admin_QLLogo : System.Web.UI.Page
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
                    string Malogo = Request.QueryString["Malogo"];
                    layLG();
                    ViewState["SortDirection"] = SortDirection.Ascending;
                }
            }
            catch
            {
            }
        }
    }
    public void layLG()
    {
        GridView1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM LOGO ");
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        layLG();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        layLG();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int Malogo = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

        string Tenlogo = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
        string trangthai = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        //  Response.Write("<script>alert('" + diachi + "')</script>");
        string sql = "update LOGO set Tenlogo = '" + Tenlogo + "' ,trangthai =" + trangthai + " where Malogo = " + Malogo + "";
        if (CSDLBANCHIM.ExcuteNonQueryTraVeGiaTri(sql) >= 0)
        {
            GridView1.EditIndex = -1;
            layLG();
            Response.Write("<script> alert('Bạn cập nhật thành công')</script>");
        }
        else
        {
            Response.Write("<script> alert('Cập nhật không thành công')</script>");
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        layLG();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}