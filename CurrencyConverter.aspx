<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrencyConverter.aspx.cs" Inherits="CurrencyConverter" %>

<!DOCTYPE html>
<html>
    <head>
        <title> Currency Converter</title>
        <link href="Converter.css" type="text/css" rel="stylesheet" />
        <style>
         p {
    text-align:center;
    
}
     
           
            #Currency {
                width: 111px;
            }
     
           
        </style>
            </head>
   
    <body> 
    
       
           
        <form ID="form1" runat="server" method="post"> 
    
        <ul class="menu"><li><a href="Home.aspx">Home</a></li>
            <li><a href="CurrencyConverter.aspx">Currency Converter</a></li>
            <li><a href="Contact.aspx">Contact </a></li>
        </ul>
            
           
            <br />
            <br />

           
       
           
            <div class ="main">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Convert:&nbsp
                <input type="text" ID="US" runat="server" /> &nbsp INR to  &nbsp;
                <select ID="Currency" runat="server"/>
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="SUBMIT" ID="Convert" OnServerClick="Convert_ServerClick" runat="server" />
                <img ID = "Graph" src = "" alt = "Currency Graph" runat = "server"/>
<br/> 
                <p style = "font-weight: bold" ID = "Result" runat = "server" > </p>
                <br/><br/>
               
            </div>
        </form>
       
    </body>
    
</html>
