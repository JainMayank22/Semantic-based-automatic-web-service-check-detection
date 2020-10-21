using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary desc for Connection
/// </summary>
public class Connection
{

    public SqlConnection con;

	public Connection()
	{
        con = new SqlConnection(ConfigurationManager.AppSettings["ID"]);
        con.Open();
	}
}
