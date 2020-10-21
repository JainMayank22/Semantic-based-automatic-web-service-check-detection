<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="Semantic_Country" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="height: 734px; width: 790px;">
    <asp:Image ID="Image3" runat="server" 
        ImageUrl="~/Images/animated_10.gif" 
                         
             
             
             style="top: 328px; left: -1px; position: absolute; height: 404px; width: 781px" />
    <asp:Image ID="Image2" runat="server" 
        ImageUrl="~/Images/background_for_website.jpg" 
        
        
        style="top: 0px; left: 4px; position: absolute; height: 326px; width: 773px" />
    <asp:Label ID="Label10" runat="server" 
        style="position: absolute; top: 167px; left: 103px;">Code Number</asp:Label>
    <asp:Label ID="Label9" runat="server" 
        style="position: absolute; top: 625px; left: 490px; width: 58px;"></asp:Label>
    <asp:Label ID="Label8" runat="server" 
        
             style="position: absolute; top: 592px; left: 490px; height: 19px; width: 137px;"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        
          
             
             
             style="position: absolute; top: 557px; left: 490px; height: 18px; width: 177px;"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        
             style="position: absolute; top: 519px; left: 490px; height: 19px; width: 152px;"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        
             
             
             style="position: absolute; top: 482px; left: 486px; height: 18px; width: 116px;"></asp:Label>
    <asp:Label ID="Label15" runat="server" 
        
        
             style="position: absolute; top: 599px; left: 192px; height: 19px; width: 116px;">Response 
         Text</asp:Label>
    <asp:Label ID="Label14" runat="server" 
        
        
             
             style="position: absolute; top: 565px; left: 192px; height: 22px; width: 133px;">Forcast 
         Result</asp:Label>
    <asp:Label ID="Label13" runat="server" 
        
        
             
             style="position: absolute; top: 531px; left: 190px; height: 18px; width: 119px;">WeatherStationCity</asp:Label>
    <asp:Label ID="Label12" runat="server" 
        
        style="position: absolute; top: 490px; left: 196px; height: 24px; width: 62px;">State</asp:Label>
    <asp:Label ID="Label11" runat="server" 
        
        style="position: absolute; top: 446px; left: 198px; height: 24px; width: 62px;">City</asp:Label>
    <asp:Label ID="Label18" runat="server" 
        
        
             style="position: absolute; top: 637px; left: 191px; height: 20px; width: 103px;">Success</asp:Label>
    <asp:Label ID="Label4" runat="server" 
        
        
             style="position: absolute; top: 442px; left: 488px; height: 24px; width: 152px;"></asp:Label>
     <asp:TextBox ID="TextBox1" style="position: absolute; top: 168px; left: 235px; width: 221px;" 
            runat="server"></asp:TextBox>
     <asp:ImageButton ID="ImageButton1" 
         
            style="position: absolute; top: 155px; left: 477px; height: 49px; width: 94px;" 
            runat="server" 
        ImageUrl="~/Images/Post_Comment_Button.png" onclick="ImageButton1_Click" /></div>
    </asp:Content>
