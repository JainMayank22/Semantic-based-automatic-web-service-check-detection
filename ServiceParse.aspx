<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="ServiceParse.aspx.cs" Inherits="ServiceParse" Title="Untitled Page" %>

<script runat="server">

   
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 0px; left: 0px; height: 561px;">
    <asp:Label ID="Label1" runat="server" 
        style="position:absolute; top: 94px; left: 60px;" Text="ADDRESS"></asp:Label>
    <asp:DropDownList ID="DropDownList1" 
        
        style="position:absolute; top: 125px; left: 60px; height: 26px; width: 566px;" 
        runat="server">
        <asp:ListItem>https://www.lb.lt/webservices/ExchangeRates/ExchangeRates.asmx?WSDL</asp:ListItem>
        <asp:ListItem>http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso?wsdl</asp:ListItem>
        <asp:ListItem>http://ws.cdyne.com/phoneverify/phoneverify.asmx?wsdl</asp:ListItem>
        <asp:ListItem>http://ws.cdyne.com/emailverify/Emailvernotestemail.asmx?wsdl</asp:ListItem>
         <asp:ListItem>http://trailstream.tv/tsoneweb.asmx?WSDL</asp:ListItem>
          <asp:ListItem>http://api.exigo.com/3.0/ExigoApi.asmx?WSDL</asp:ListItem>
          
    </asp:DropDownList>
        <asp:ImageButton ID="ImageButton3" runat="server" 
            ImageUrl="~/Images/search.png" onclick="ImageButton3_Click" 
            
            style="position: absolute; top: 119px; left: 640px; height: 31px; width: 110px" />
    
    <asp:Label ID="Label3" runat="server"  
        
        style="position:absolute; top: 213px; left: 64px; height: 17px; width: 278px;"></asp:Label>
    <asp:Label ID="Label4" runat="server"  
        
        style="position:absolute; left: 63px; width: 639px; height: 243px; top: 297px;" 
        Text="Label"></asp:Label>
    <asp:Label ID="Label5" runat="server"  
        
        style="position:absolute; top: 257px; left: 62px; width: 283px; height: 20px;"></asp:Label>
    
    <asp:Label ID="Label2" runat="server" 
        style="position:absolute; top: 49px; left: 56px; width: 558px; text-align: center;"
      Text="SERVICE DETAILS" Font-Bold="True" Font-Size="Large" ForeColor="#FF0066"></asp:Label>
    
</div>
</asp:Content>

