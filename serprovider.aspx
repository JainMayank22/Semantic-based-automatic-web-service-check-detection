<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="serprovider.aspx.cs" Inherits="serprovider" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    </p>
    <asp:Image ID="Image2" runat="server" 
        ImageUrl="~/Images/content_main panel.png" 
        
        style="top: 494px; left: 142px; position: absolute; height: 708px; width: 586px" />
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/uplo.png" 
        onclick="ImageButton2_Click" 
        
    
        style="top: 985px; left: 386px; position: absolute; height: 67px; width: 141px" />
    <asp:FileUpload ID="FileUpload1" runat="server" 
        
        
    style="top: 822px; left: 439px; position: absolute; height: 22px; width: 216px" />
    <asp:Label ID="Label1" runat="server" Text="Browse Your Data Set" 
        style="position: absolute; top: 820px; left: 219px;"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Service" 
        style="position: absolute; top: 601px; left: 297px; height: 18px;"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        
        
    style="top: 602px; left: 432px; position: absolute; height: 25px; width: 142px">
        <asp:ListItem>agent1</asp:ListItem>
        <asp:ListItem>agent2</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        
        
    style="top: 702px; left: 437px; position: absolute; height: 25px; width: 138px">
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" Text="Disease" 
        style="position: absolute; top: 713px; left: 300px; height: 22px;"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="position: absolute; top: 1119px; left: 173px;"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/refresh (1).png" onclick="ImageButton1_Click" 
        
    style="top: 702px; left: 602px; position: absolute; height: 26px; width: 24px" />
</asp:Content>

