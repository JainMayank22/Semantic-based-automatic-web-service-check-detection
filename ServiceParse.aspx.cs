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
using System.ComponentModel;
using System.Web.Services;
using System.Web.Services.Description;
using System.Windows.Forms;
using System.Xml;




public partial class ServiceParse : System.Web.UI.Page
{
   
    //MyRichText myText = new MyRichText();
    DropDownList  cboURL;
    WSDLParser1 parser;
    //private System.Windows.Forms.ImageList imageList1;
    private System.ComponentModel.IContainer components;
    protected void Page_Load(object sender, EventArgs e)
    {
        //LoadQuestionDatabase();
       // WSDLParser.WSDLParser ww = new WSDLParser.WSDLParser();

        
        
    }
    public void LoadQuestionDatabase()
    {
        XmlTextReader reader = new XmlTextReader("http://www.webservicex.net/CurrencyConvertor.asmx?WSDL");


        System.Web.UI.WebControls.TreeNode node = new System.Web.UI.WebControls.TreeNode();
        System.Web.UI.WebControls.TreeNode subnode = new System.Web.UI.WebControls.TreeNode();

        while (reader.Read())
        {
            if (reader.NodeType == XmlNodeType.Element && reader.Name == "category")
            {
                //node = lstQuestions.Nodes.Add(reader.GetAttribute(0));
               // categories.Add(reader.GetAttribute(0));


                while (reader.NodeType != XmlNodeType.EndElement)
                {
                    reader.Read();
                    if (reader.Name == "question")
                    {
                        //subnode = node.Nodes.Add(reader.GetAttribute(0));
                        //questions.Add(reader.GetAttribute(0));

                        while (reader.NodeType != XmlNodeType.EndElement)
                        {
                            reader.Read();
                            if (reader.Name == "answer")
                            {
                                // add each answer
                                //subnode.Nodes.Add(reader.GetAttribute(0).Replace("\t", ""));
                            }
                        }
                    }
                }

            }

        }
        reader.Close();
    }

        
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        //ReadServiceDescription();

        XmlTextReader reader = new XmlTextReader(DropDownList1.Text);

        ServiceDescription wsdl = ServiceDescription.Read(reader);

        foreach (PortType pt in wsdl.PortTypes)
        {

            Label3.Text = pt.Name;

            Console.WriteLine("PortType {0}", pt.Name);

            foreach (Operation op in pt.Operations)
            {
                Label4.Text = op.Name + op.Documentation;

                Console.WriteLine("\tOperation: {0}\r\n\t", op.Name, op.Documentation);

                foreach (OperationMessage msg in op.Messages)
                {

                    if (msg is OperationInput)
                    {
                        Label5.Text = msg.Message.ToString();
                        Console.WriteLine("\t\tInput Message: {0}", msg.Message);

                        OperationInput oi = msg as OperationInput;

                    }

                    else if (msg is OperationOutput)

                        Console.WriteLine("\t\tOutput Message: {0}", msg.Message);

                    else

                        Console.WriteLine("\t\tFault Message: {0}", msg.Message);

                }

            }

        }
    }
}
