using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;
using System.Drawing;
using System.Data.SqlClient;


public partial class Cust_Feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd,cmd1,cmd2,cmd3;
    SqlDataAdapter da;
    string url;
    Connection con1 = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
         
          Label2.Visible = false;
          Label3.Visible = false;         
                     
        }
    }    
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("INSERT INTO FeedTab(sercat, Ava, serinfo, serneed, name, email) VALUES(@sercat, @Ava, @serinfo, @serneed, @name, @email)", con1.con);

        cmd.Parameters.AddWithValue("@sercat", DropDownList6.SelectedValue);

        cmd.Parameters.AddWithValue("@Ava", DropDownList2.SelectedValue);
       
        int av=Convert.ToInt32 (DropDownList2.SelectedValue.ToString());

        cmd.Parameters.AddWithValue("@serinfo", DropDownList3.SelectedValue);
        
       // string cs = DropDownList3.SelectedValue;
        int cs = Convert.ToInt32(DropDownList3.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@serneed", DropDownList4.SelectedValue);        
        int ns = Convert.ToInt32(DropDownList2.SelectedValue.ToString());

        cmd.Parameters.AddWithValue("@name",TextBox1.Text );
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);
               
        int c = av + cs + ns;
        //Image1.Visible = true;
        Label3.Visible = true;
        Label2.Visible = true;
        int m = 6;
        int t = c / m;
        //Label2.Text = Convert.ToString(c);

                
        cmd.ExecuteNonQuery();
        
       
    }
    
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton7_Click1(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
