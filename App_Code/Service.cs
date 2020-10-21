using System;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data.SqlClient;


[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Service : System.Web.Services.WebService
{

    SqlConnection con,con1;
    SqlCommand cmd,cmd1;
    SqlDataReader dr,dr1;

    string b="";
    int i = 0;
    int j = 0;
    string h, h1, a1, a2,s;
    int m=0,m1=0;

    string[] ss = new string[15];
    string[] ss1 = new string[15];
   
    Connection concls=new Connection();

    
    public Service ()
    {
        
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() 
    {
        return "Hello World";
    }

    [WebMethod]
    public string publishRegister(string UserId,string UserName,string Password,string EmailId,string phone,string Address )
    {

        cmd = new SqlCommand("insert into RegisterTab values('" + UserId + "','" + UserName + "','" + Password + "','" + EmailId + "','" + phone + "','" + Address + "')", concls.con);
        cmd.ExecuteNonQuery();
        cmd.Dispose();

        string ss = "Data Added in User Registration";
        return ss;

        
    }



    [WebMethod]
    public string service1(string s)
    {
        
       
        cmd = new SqlCommand("select * from sys.tables",con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
             h= dr[0].ToString();
             ss[i] = h;
             i++;
        }
        dr.Close();
        cmd.Dispose();


        int k = ss.Length;
        int ind=0;
           while (k>0)
             {
                 if (s == ss[ind])
                 {
                     string g = "select * from " + s;
                     cmd1 = new SqlCommand(g, con);
                     dr1 = cmd1.ExecuteReader();
                     while (dr1.Read())
                     {
                         a1 = dr1[0].ToString();
                         a2 = dr1[1].ToString();
                         b += a1 + "  " + a2 + "  ";
                     }
                     dr1.Close();
                     cmd1.Dispose();
                     
                 }
                 ind++;
                 k--;
             }


           m++;
           return b;
            
    }



    [WebMethod]
    public string service2(string s)
    {
        cmd = new SqlCommand("select * from sys.tables", con1);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h1 = dr[0].ToString();

            ss1[j] = h1;
            j++;
        }
        dr.Close();
        cmd.Dispose();



       int k = ss.Length;
        int ind=0;
           while (k>0)
             {
                 if (s == ss1[ind])
                 {
                    string l = "select * from " + s;
                    cmd1 = new SqlCommand(l, con1);
                    dr1 = cmd1.ExecuteReader();
                    while (dr1.Read())
                    {
                        a1 = dr1[0].ToString();
                        a2 = dr1[1].ToString();
                        b += a1 + "  " + a2 + "  ";
                    }
                    dr1.Close();
                    cmd1.Dispose();

                 }
                 ind++;
                 k--;
             }


           m++;
           return b;

    }



           
        
        }
  

