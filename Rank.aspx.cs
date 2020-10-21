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

public partial class Rank : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    Connection con1 = new Connection();
    SqlDataAdapter da;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        show_chart();
    }
    void show_chart()
    {
        try
        {
            DataSet ds = new DataSet();
            Chart1.Titles.Add("SERVICE  CALCULATION");
            da = new SqlDataAdapter("SELECT * FROM  FeedTab ", con1.con);           
            da.Fill(ds);
            DataView dv = new DataView(ds.Tables[0]);            
            Chart1.Series["Available"].Points.DataBindXY(dv, "SNO", dv, "Ava");
            Chart1.Series["SerInfo"].Points.DataBindXY(dv, "SNO", dv, "serinfo");
            Chart1.Series["SerNeed"].Points.DataBindXY(dv, "SNO", dv, "serneed");

           
        
        }
        catch (Exception ex)
        {
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
