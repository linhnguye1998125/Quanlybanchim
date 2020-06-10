using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using QLBC;
public partial class Timkiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tim = Request.QueryString["tim"];/*Nhận 1 tham số từ trang khác*/

        DataTable dt = new DataTable();
        dt = CSDLBANCHIM.GetData("select * from CHIM where Tengoi LIKE  N'%" + tim + "%' and SoLuongBan > 0");
        if (dt.Rows.Count > 0)
        {
            lbtim.Visible = true;
            lbtim.Text = "Kết quả tìm kiếm cho:'" + tim + "'";
            lbthongbao.Visible = false;
            DataList.DataSource = dt;
            DataList.DataBind();
        }
        else
        {
            lbtim.Visible = false;
            lbthongbao.Visible = true;
            lbthongbao.Text = "không có kết quả cho:'" + tim + "'";
        }
    }
}