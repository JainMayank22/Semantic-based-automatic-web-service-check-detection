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

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string WebserviceUrl = "http://www.abc.com/lgl/test/webservice/v1_00/security.asmx";

        //specify service name
        string serviceName = "SecurityAndSessionManagement";

        //specify method name to be called
        string methodName = "Session_Start";

        //Arguments passed to the method
        string[] arArguments = new string[2];
        arArguments[0] = "abc";
        arArguments[1] = "xxxx";

        DynamicWebService objCallWS = new DynamicWebService();
        
    }
}
