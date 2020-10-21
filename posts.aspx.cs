using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class posts : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList2.Visible = false;

        con = new SqlConnection("Data Source=LIKHESH-PC\\SQLEXPRESS;Initial Catalog=ehealth;Integrated Security=True");
        con.Open();

        TextBox1.Text = Session["dis"].ToString();
        TextBox2.Text = Session["name"].ToString();
        //TextBox3.Text = Session["comm"].ToString();
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "" && TextBox4.Text == "" && TextBox4.Text == "")
        {
            Label7.Text = "Pls Fill all Fields...";
        }
        else
        {
            string sss = "insert into posts values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "')";
            cmd = new SqlCommand(sss, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();

            Label7.Text = "Comment Posts Sucessfully...";
        }
    }
}
