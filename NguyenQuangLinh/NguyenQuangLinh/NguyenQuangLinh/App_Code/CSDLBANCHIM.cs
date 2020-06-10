using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
namespace QLBC {
    /// <summary>
    /// Summary description for CSDLBANCHIM
    /// </summary>
    /// 
    public static class CSDLBANCHIM
    {

        public static string strCon = ConfigurationManager.ConnectionStrings["QLBanChim"].ConnectionString.ToString();
        public static DataTable GetData(string lenhSQL)
        {
            SqlConnection sqlCon = new SqlConnection(strCon);
            try
            {
                //SqlCommand ,SqlDataAdapter  vòi lấy dữ liệu lên
                //DataTable bảng lưu dữ liệu lại
                   SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        //thêm dữ liệu xuong sql
        public static void Execute(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();

            }
        }
        /*lấy giá trị */
        public static string GetValue(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                string value = sqlCmd.ExecuteScalar().ToString();
                sqlCon.Close();
                return (value);
            }
        }
        public static int ExcuteNonQueryTraVeGiaTri(string sql)
        {
            int i = 1;
            {
                SqlConnection sqlCon = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, sqlCon);
                sqlCon.Open();

                i = cmd.ExecuteNonQuery();
                //cmd.Dispose();// Hủy cmd
                sqlCon.Close();
            }

            return i;
        }
    }
}