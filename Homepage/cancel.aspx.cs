using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

public partial class Homepage_cancel : System.Web.UI.Page
{
    static String str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlDataAdapter da = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Trim() == string.Empty)
        {
            MessageBox.Show("Please enter your name");
            return;
        }
        if (TextBox3.Text.Trim() == string.Empty)
        {
            MessageBox.Show("Please enter your contact number");
            return;
        }
        if (TextBox1.Text.Trim() == string.Empty)
        {
            MessageBox.Show("Please enter your booking id");
            return;
        }
        int a = Int32.Parse(TextBox1.Text);

        con.Open();
        da.DeleteCommand = new SqlCommand("delete from infor where Id = " + a + " and name = '" + TextBox2.Text + "' and contactno = '" + TextBox3.Text + "'", con);
        int rows_affected = da.DeleteCommand.ExecuteNonQuery();
        if (rows_affected == 0)
        {
            MessageBox.Show("Information Invalid");
            return;
        }
        else
            Response.Redirect("~/Homepage/aftercancel.aspx");
        con.Close();
    }
}