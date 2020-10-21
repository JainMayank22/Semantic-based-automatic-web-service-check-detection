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
using System.Text.RegularExpressions;
using System.IO;

public partial class serprovider : System.Web.UI.Page
{
    SqlConnection con, con1;
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=LIKHESH-PC\\SQLEXPRESS;Initial Catalog=agent1;Integrated Security=True");
        con.Open();

        con1 = new SqlConnection("Data Source=LIKHESH-PC\\SQLEXPRESS;Initial Catalog=agent2;Integrated Security=True");
        con1.Open();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DropDownList2.Items.Clear();
        if (DropDownList1.SelectedIndex == 0)
        {
            DropDownList2.Items.Add("cancer");
            DropDownList2.Items.Add("heart_attack");
            DropDownList2.Items.Add("chickenpox");
        }
        else
        {
            DropDownList2.Items.Add("eye_infection");
            DropDownList2.Items.Add("diabettes");
            DropDownList2.Items.Add("blood_pressure");
        }

    }
    string a;
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //string ss = File.ReadAllText(FileUpload1.FileName);

        FileUpload1.SaveAs("c:\\Filetrans1\\" + FileUpload1.FileName);
        a = "c:\\Filetrans1\\" + FileUpload1.FileName;


        string ss = File.ReadAllText(a);

        string[] ary = Regex.Split(ss, "\r\n");

        for (int i = 0; i < ary.Length - 1; i++)
        {
            sample(ary[i]);

        }

    }

    private void sample(string p)
    {
        string[] aa = Regex.Split(p, "  ");

        if (DropDownList1.SelectedIndex == 0)
        {
            string r = "insert into " + DropDownList2.Text + " values('" + aa[0] + "','" + aa[1] + "')";
            cmd = new SqlCommand(r, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
        else
        {
            string r = "insert into " + DropDownList2.Text + " values('" + aa[0] + "','" + aa[1] + "')";
            cmd = new SqlCommand(r, con1);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

        Label4.Text = "Files Updated Sucessfuly...";
    }
}
