using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLBC;
using System.Data;
using System.Data.SqlClient;
public partial class TrangChu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = CSDLBANCHIM.GetData(@"SELECT TOP 9 * FROM CHIM ORDER BY NgayCapNhat DESC");
        DataList.DataSource = dt;
        DataList.DataBind();
    }
}