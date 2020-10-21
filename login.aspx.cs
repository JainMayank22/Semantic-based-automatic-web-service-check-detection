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


public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    Connection conet = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string xx;
    int x;
    protected void Button1_Click(object sender, EventArgs e)
    {
        loginAdd();
    }

    public void loginAdd()
    {
        try
        {

            SqlDataAdapter da = new SqlDataAdapter("select uid,password from RegisterTab where uid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", conet.con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count != 0)
            {
                Session["uid"] = TextBox1.Text;
                Response.Redirect("MainPage.aspx");


            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "User Enter Wrong Access";
            }
        }
        catch (Exception ex)
        {
             
        }
    }

    void admin()
    {
        //if (TextBox1.Text == "ADMINISTRATOR" && TextBox2.Text == "12345")
        //{
        //    //Response.Redirect("ahme.aspx");
        //}

        if (TextBox1.Text == "sara" && TextBox2.Text == "1234")
        {
            Response.Redirect("serprovider.aspx");
            Session["uid"] = TextBox1.Text;
            Session["pass"] = TextBox2.Text;
        }
        else
        {
            cmd = new SqlCommand("select count(*) from regester where uid='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'", con);
            xx = cmd.ExecuteScalar().ToString();
            x = Convert.ToInt32(xx);

            if (x == 0)
            {
                //Label1.Text = ("The Username & Password dosenot MATCH");

            }
            else if (x == 1)
            {
                //TextBox1.Text = "";
                //TextBox2.Text = "";

                Session["uid"] = TextBox1.Text;
                Session["pass"] = TextBox2.Text;

                Response.Redirect("uhme.aspx");

            }
            else if (x == 2)
            {
                //Label1.Text = ("The Username & Password already exists");
            }
        }
    }
    
}
