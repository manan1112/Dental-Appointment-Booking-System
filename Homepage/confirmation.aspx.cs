using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;     /*for queries select command*/


public partial class Homepage_confirmation : System.Web.UI.Page
{
    static String str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlDataAdapter da = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        String str1 = Session["new"].ToString();                          /* shared variable from diff pages */
        da.SelectCommand = new SqlCommand("select Id from infor where datetime = '" + str1 + "'", con);
        con.Open();
        DataSet ds = new DataSet();
        da.Fill(ds, "inf" );
        con.Close();
        Label1.Text = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();

    }
}