using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using QLBC;

public partial class Admin_QLDonhangAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDNAdmin"] == null)
            Response.Redirect("~/Admin/DangnhapAdmin.aspx");

        if (Session["TenDNAdmin"] != null)
        {
            gvDonDatHang.DataSource = CSDLBANCHIM.GetData("Select * from DONDATHANG");
            gvDonDatHang.DataBind();

            string Tengoi = ("select SUM(TriGia) FROM DONDATHANG " ).ToString();
            string sql = "select SUM(TriGia) AS TONGTIEN FROM DONDATHANG "  ;
            DataTable dt = CSDLBANCHIM.GetData(sql);
            
            lbtong.Text = dt.Rows[0]["TONGTIEN"].ToString();
        }

    }
    private void hien()
    {
        gvDonDatHang.Visible = true;

    }
    public string CheckHTGH(object obj)
    {
        bool b = bool.Parse(obj.ToString());
        if (b)
            return " Đã thanh toán ";
        else
            return "sau khi giao hàng";
    }
    public string CheckHTTT(object obj)
    {
        bool b = bool.Parse(obj.ToString());
        if (b)
            return "Giao trực tiếp";
        else
            return "Chuyển giao";
    }
    protected void gvDonDatHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Chitiet")
        {
            try
            {

                hien();
                gvCTDH.Visible = true;
                int chiso = int.Parse(e.CommandArgument.ToString());
                int ma = int.Parse(gvDonDatHang.Rows[chiso].Cells[0].Text);
                gvCTDH.DataSource = CSDLBANCHIM.GetData("select * from CTDATHANG where SoDH = " + ma);
                gvCTDH.DataBind();

            }
            catch
            {
                lbThongBao.Text = "Thất bại!";
            }
        }
    }

    protected void gvDonDatHang_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDonDatHang.PageIndex = e.NewPageIndex;
        layChim();
    }

    protected void gvDonDatHang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvDonDatHang.EditIndex = -1;
        layChim();
    }

    protected void gvDonDatHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int SoDH = int.Parse(gvDonDatHang.DataKeys[e.RowIndex].Value.ToString());
            string sql = "Delete from DONDATHANG where SoDH=" + SoDH;
            string sql1 = "Delete from CTDATHANG where SoDH=" + SoDH;

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

    protected void gvDonDatHang_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvDonDatHang.EditIndex = e.NewEditIndex;
        layChim();
    }

    protected void gvDonDatHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }

    protected void gvDonDatHang_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void layChim()
    {
        gvDonDatHang.DataSource = CSDLBANCHIM.GetData("Select * from DONDATHANG");
        gvDonDatHang.DataBind();
    }
    public void CapnhatNXB()
    {

        gvDonDatHang.DataSource = CSDLBANCHIM.GetData("Select * from DONDATHANG");
        gvDonDatHang.DataBind();
    }
}