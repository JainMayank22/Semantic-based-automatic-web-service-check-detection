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

public partial class Semantic_Country : System.Web.UI.Page
{ //denote country details
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Country.CountryInformationService CountryService = new Country.CountryInformationService();

        
        string a, b, c, d, e1, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t;

        string text = TextBox1.Text;

        a = CountryService.GetContinents().ToString();
        b = CountryService.GetCountries().ToString();
        c = CountryService.GetCurrencies().ToString();
        d = CountryService.GetServiceName();
        e1 = CountryService.SoapVersion.ToString();
        f = CountryService.Url;


        Label4.Text = a;
        Label5.Text = b;
        Label6.Text = c;
        Label7.Text = d;
        Label8.Text = e1;
        Label9.Text = f;
    }
}
