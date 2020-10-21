<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
        runat="server" ControlToValidate="TextBox4"
            ErrorMessage="please enter the valid email address" 
    Style="z-index: 129;
            left: 527px; position: absolute; top: 266px; height: 40px; width: 147px;" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(Pls Enter Valid EMail Address)</asp:RegularExpressionValidator>
    <asp:Label ID="Label7" runat="server" Text="Password" 
        style="position: absolute; top: 249px; left: 68px; width: 66px;"></asp:Label>
    <asp:Label ID="Label8" runat="server" Text="Phone No" 
        
    style="position: absolute; top: 324px; left: 68px; width: 111px; height: 16px;"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Name" 
        
    style="position: absolute; top: 209px; left: 70px; width: 34px; height: 16px;"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" 
        
        
        
    
        style="top: 242px; left: 217px; position: absolute; height: 20px; width: 290px" 
        TextMode="Password"></asp:TextBox>
    
    <asp:TextBox ID="TextBox1" runat="server" 
        
        
        
    style="top: 206px; left: 218px; position: absolute; height: 22px; width: 290px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="left: 217px; position: absolute; height: 107px; width: 291px; top: 351px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="E-Mail" 
        style="position: absolute; top: 289px; left: 69px; height: 19px;"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" 
      
        
    style="top: 308px; left: 217px; position: absolute; height: 25px; width: 291px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" 
      
        
    style="top: 270px; left: 217px; position: absolute; height: 25px; width: 290px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Address" 
        
    style="position: absolute; top: 353px; left: 68px; height: 23px; width: 131px;"></asp:Label>
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Register-Now-Button 1.jpg" 
        
        style="top: 479px; left: 420px; position: absolute; height: 38px; width: 99px" 
        onclick="ImageButton2_Click" />
    <asp:Image ID="Image1" runat="server" 
           style="top: 84px; left: 234px; position: absolute; height: 39px; width: 313px" 
           ImageUrl="~/Images/registration_logo.gif" />
    </asp:Content>

