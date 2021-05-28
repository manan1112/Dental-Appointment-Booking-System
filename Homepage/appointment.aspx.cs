using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;


public partial class Homepage_appointment : System.Web.UI.Page
{
    static String str =ConfigurationManager.ConnectionStrings["DB"].ConnectionString; 
    SqlConnection con = new SqlConnection(str);
    SqlDataAdapter da = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
        Calendar1.Attributes.Add("style", "position:absolute");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;
    }

    
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime pastday = e.Day.Date;
        DateTime date = DateTime.Now;
        int year = date.Year;
        int month = date.Month;
        int day = date.Day;
        DateTime today = new DateTime(year, month, day);
        if (pastday.CompareTo(today) < 0)
        {
            e.Cell.BackColor = System.Drawing.Color.LightGray;
            e.Day.IsSelectable = false;

        }
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.LightGray;
        }
    }
   
        

protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox2.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please Enter Name.");
                return;
            }
            if (TextBox3.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please Enter Contact Number.");
                return;
            }
            if (TextBox4.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please Enter Address.");
                return;
            }
            if (TextBox5.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please Select Date.");
                return;
            }
            
            string str = TextBox5.Text + DropDownList1.Text;
            Session["new"] = str;
            con.Open();
            da.InsertCommand = new SqlCommand("insert into infor (name,contactno,address,datetime) values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + str + "')", con);
            da.InsertCommand.ExecuteNonQuery();
            Response.Redirect("~/Homepage/confirmation.aspx");
            con.Close();
            Session["stri"] = str;
        }
        catch (System.Data.SqlClient.SqlException)
        {
            MessageBox.Show("Date and Time not available");
        }
    }
}