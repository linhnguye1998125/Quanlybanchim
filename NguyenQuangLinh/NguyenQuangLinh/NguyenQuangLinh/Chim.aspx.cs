using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using QLBC;
public partial class Chim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Maloai = Request.QueryString["Maloai"];
       
        DataList.DataSource = CSDLBANCHIM.GetData(@"SELECT * FROM CHIM where Maloai=" + Maloai);
        DataList.DataBind();
    }
}