<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/bluelogin.png" 
        
        
        
    
        
    style="top: 2px; left: 503px; position: absolute; height: 227px; width: 296px" />
    <asp:Label ID="Label1" runat="server" 
        style="position:absolute; top: 274px; left: 503px; width: 291px;" Text="Label" 
        Visible="False"></asp:Label>
    <asp:Button ID="Button1" runat="server" 
        style="top: 176px; left: 677px; position: absolute; height: 36px; width: 96px" 
        Text="Sign in" onclick="Button1_Click" />
    <asp:TextBox ID="TextBox1" runat="server" 
        
        
    style="top: 85px; left: 543px; position: absolute; height: 25px; width: 214px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        
        
    
        style="top: 132px; left: 543px; position: absolute; height: 26px; width: 213px" 
        TextMode="Password"></asp:TextBox>
</asp:Content>

