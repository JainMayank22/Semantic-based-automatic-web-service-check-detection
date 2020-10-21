<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="posts.aspx.cs" Inherits="posts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label7" runat="server" 
        style="position: absolute; top: 1052px; left: 267px; z-index: 1; height: 24px; width: 372px;" 
        Font-Size="Small" ForeColor="#FF6600"></asp:Label>
<asp:Image ID="Image7" runat="server" 
    ImageUrl="~/Images/Moving-picture-fire-breathing-dragon-smoking-left-animated-gif.gif" 
    
        style="top: 429px; left: 753px; position: absolute; height: 151px; width: 184px" />
<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Post_Comment_Button.png" 
    onclick="ImageButton3_Click" 
    
    
        
        style="top: 989px; left: 460px; position: absolute; height: 40px; width: 99px; z-index: 1" />
    <asp:Label ID="Label4" runat="server" Text="Comments" 
        style="position: absolute; top: 855px; left: 284px; z-index: 1; height: 30px;" 
        Font-Size="X-Large" ForeColor="#99FF33"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        
        
        
    
        
        style="top: 725px; left: 41px; position: absolute; height: 26px; width: 12px; z-index: 1">
    </asp:DropDownList>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="top: 729px; left: 428px; position: absolute; height: 23px; width: 266px; z-index: 1"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Link" 
        style="position: absolute; top: 726px; left: 311px; z-index: 1; height: 26px; width: 63px;" 
        Font-Size="X-Large" ForeColor="#99FF33"></asp:Label>
    <asp:Label ID="Label5" runat="server" Text="Name" 
        style="position: absolute; top: 648px; left: 310px; height: 23px; width: 99px; z-index: 1;" 
        Font-Size="X-Large" ForeColor="#66FF66"></asp:Label>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/20-Newspond.png" 
        
        
    
        
        
        style="top: 455px; left: 218px; position: absolute; height: 583px; width: 526px" />
    <asp:Label ID="Label6" runat="server" Text="Disease" 
        
    style="position: absolute; top: 577px; left: 296px; z-index: 1; height: 25px;" 
    Font-Size="X-Large" ForeColor="#99FF66"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        
        style="top: 580px; left: 432px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        
        style="top: 653px; left: 431px; position: absolute; height: 23px; width: 128px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="top: 808px; left: 429px; position: absolute; height: 145px; width: 218px" 
        TextMode="MultiLine"></asp:TextBox>
</asp:Content>

