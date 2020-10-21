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
using System.Net.Mail;

public partial class register : System.Web.UI.Page
{
    SqlConnection connect;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter sda;
    int no=0;
    string Id;
    Connection con1 = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    int i;
    void autogen()
    {
        sda = new SqlDataAdapter("select * from RegisterTab",con1.con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count != 0)
        {
            no = ds.Tables[0].Rows.Count + 1;
            Id = no.ToString();
        }
        else
        {
            no = no + 1;
            Id = no.ToString();
        }
       

    }

   
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        autogen();
        SqlCommand cmd = new SqlCommand("insert into RegisterTab values('" + Id + "','" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "')", con1.con);
        cmd.ExecuteNonQuery();
        cmd.Dispose();

        string ss = "Data Added in User Registration";
       // localhost.Service LcService = new localhost.Service();
       // LcService.publishRegister(Id, TextBox1.Text, TextBox5.Text, TextBox4.Text, TextBox6.Text, TextBox3.Text);

        Clear();
       
    }

    public void Clear()
    {
        TextBox1.Text = ""; 
        TextBox5.Text = ""; 
        TextBox4.Text = ""; 
        TextBox6.Text = ""; 
        TextBox3.Text = "";
    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}
