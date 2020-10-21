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
using Microsoft.VisualBasic;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.CodeDom;
using System.CodeDom.Compiler;
using System.Security.Permissions;
using System.Web.Services.Description;
using System.Reflection;

/// <summary>
/// Summary description for DynamicWebService
/// </summary>
public class DynamicWebService
{

     public void CallWebService(String webServiceAsmxUrl,String serviceName,String  methodName  ,String[] args )
     {

	try 
    {
	System.Net.WebClient client = new System.Net.WebClient();

	//-Connect To the web service
	System.IO.Stream stream = client.OpenRead(webServiceAsmxUrl + "?wsdl");

	//Read the WSDL file describing a service.
	ServiceDescription description = ServiceDescription.Read(stream);

	//LOAD THE DOM'''''''''''''''''''''''''''

	//--Initialize a service description importer.
	ServiceDescriptionImporter importer = new ServiceDescriptionImporter();
	importer.ProtocolName = "Soap12";
	// Use SOAP 1.2.
	importer.AddServiceDescription(description, null, null);

	//--Generate a proxy client. 

	importer.Style = ServiceDescriptionImportStyle.Client;
	//--Generate properties to represent primitive values.
	importer.CodeGenerationOptions = System.Xml.Serialization.CodeGenerationOptions.GenerateProperties;

	//Initialize a Code-DOM tree into which we will import the service.
	CodeNamespace nmspace = new CodeNamespace();
	CodeCompileUnit unit1 = new CodeCompileUnit();
	unit1.Namespaces.Add(nmspace);

	//Import the service into the Code-DOM tree. 
	//This creates proxy code that uses the service.

	ServiceDescriptionImportWarnings warning = importer.Import(nmspace, unit1);


	if(warning == 0) {
		//--Generate the proxy code
		CodeDomProvider provider1 = CodeDomProvider.CreateProvider("VB");
		//--Compile the assembly proxy with the // appropriate references
		string[] assemblyReferences = null;
		assemblyReferences = new string[] {
			"System.dll",
			"System.Web.Services.dll",
			"System.Web.dll",
			"System.Xml.dll",
			"System.Data.dll"
		};
		CompilerParameters parms = new CompilerParameters(assemblyReferences);
		parms.GenerateInMemory = true;
		//(Thanks for this line nikolas)
		CompilerResults results = provider1.CompileAssemblyFromDom(parms, unit1);

		//-Check For Errors

		if (results.Errors.Count > 0) {
			CompilerError oops = default(CompilerError);
			
			throw new System.Exception("Compile Error Occurred calling webservice.");
		}

		//--Finally, Invoke the web service method
		object wsvcClass = results.CompiledAssembly.CreateInstance(serviceName);
		MethodInfo mi = wsvcClass.GetType().GetMethod(methodName);
        //return true;

	} else {
		//return null;
	}

} catch (Exception ex) {
	throw ex;
}
     }

}
