<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="Semantic_MainPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style1
        {
            width: 46%;
            height: 339px;
            top: 6px;
            left: 223px;
            position: absolute;
        }
    .style3
    {
        width: 106px;
        height: 83px;
    }
    .style4
    {
        height: 83px;
    }
    .style5
    {
        width: 106px;
        height: 52px;
    }
    .style6
    {
        height: 52px;
    }
    .style7
    {
        width: 106px;
        height: 34px;
    }
    .style8
    {
        height: 34px;
    }
        .style9
        {
            height: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: -1px; left: -3px; height: 509px; width: 949px;">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Image ID="Image4" runat="server" Height="74px" 
                    
                    ImageUrl="~/Images/discoveryweather--0031--best-discovery-weather--marge.thumb.jpg" 
                    Width="78px" style="z-index: 1" 
                    />
            </td>
            <td class="style4">
                
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/CS.aspx" 
                    Font-Size="Large" ForeColor="#FF3300">Weather Discovery</asp:LinkButton>
            </td>
           
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image1" runat="server" Height="74px" 
                    
                    ImageUrl="~/Images/currency services.jpg" 
                    Width="78px" style="z-index: 1" 
                    />
            </td>
            <td class="style4">
                
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/CurrencyConverter.aspx" 
                    Font-Size="Large" ForeColor="#FF3300">Currency Converter</asp:LinkButton>
            </td>
           <tr>
            <td class="style3">
                <asp:Image ID="Image5" runat="server" Height="74px" 
                    
                    ImageUrl="~/Images/animated_gif_movies.gif" 
                    Width="78px" style="z-index: 1" 
                    />
            </td>
            <td class="style4">
                
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/ServiceParse.aspx" 
                    Font-Size="Large" ForeColor="#FF3300">WSDL Service Description</asp:LinkButton>
            </td>
           
        </tr>
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image2" runat="server" Height="74px" 
                    
                    ImageUrl="~/Images/Moving-picture-fire-breathing-dragon-smoking-left-animated-gif.gif" 
                    Width="78px" style="z-index: 1" 
                    />
            </td>
            <td class="style4">
                
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/feedback.aspx" 
                    Font-Size="Large" ForeColor="#FF3300">Feedback</asp:LinkButton>
            </td>
           
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image3" runat="server" Height="74px" 
                    
                    ImageUrl="~/Images/EARTH004.GIF" 
                    Width="78px" style="z-index: 1" 
                    />
            </td>
            <td class="style4">
                
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Contact.aspx" 
                    Font-Size="Large" ForeColor="#FF3300">Contact Us</asp:LinkButton>
            </td>
           
        </tr>
        
        
    </table>
    </div>
    
</asp:Content>

