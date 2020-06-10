using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using QLBC;
public partial class TinTuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM TINTUC ");
        DataList1.DataBind();

        string cmd = "UPDATE TINTUC SET LUOTXEM=LUOTXEM+1";
        DataTable dt = CSDLBANCHIM.GetData(cmd);
    }
}