<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" ForeColor="#FF3399" 
        Text="Feedback" 
        style="z-index: 1; left: 423px; top: 21px; position: absolute"></asp:Label>
   
   <p style="width: 305px">
        &nbsp;</p>
    <table class="style3" 
        
        style="z-index: 1; left: 320px; top: 69px; position: absolute; height: 372px;">
        <tr>
        <td>
        Select Category
        </td>
        <td>
            <asp:DropDownList ID="DropDownList6" runat="server" Height="20px" Width="191px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Weather Service</asp:ListItem>
                <asp:ListItem>Currency Service</asp:ListItem>
                <asp:ListItem>Wsdl Service</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
        
        <tr>
            <td class="style4">
                Availability</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" 
                    Width="190px" >
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem> 
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;Service Information</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" 
                    Width="192px" >
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;Service Needed</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="20px" 
                    Width="190px" >
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="style4">
                Other Sevices</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" 
                    Width="189px" >
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="style4">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="189px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Email_Id</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
            <center >
                <asp:Button ID="Button1" runat="server" 
                    Text="OK" BackColor="White" ForeColor="#0033CC" onclick="Button1_Click" 
                    Width="120px" />
                    </center>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" 
                    Text="Cancel" BackColor="White" ForeColor="#0033CC" 
                    onclick="Button2_Click" Width="189px" /></td>
        </tr>
    </table>
   
    <p>
        &nbsp;</p>
    <p style="top: 0px; left: 0px; position: absolute; height: 19px; width: 1275px">
        &nbsp;</p>
        <asp:Label ID="Label5" runat="server"  
            style="top: 98px; left: 148px; position: absolute; width: 50px; margin-bottom: 1px; height: 31px;" 
            Font-Size="X-Large" ForeColor="#0033CC" Visible="False"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
        style="top: 99px; left: 18px; position: absolute; width: 131px; margin-bottom: 1px; height: 31px;"  
        Text="Total score" Font-Size="X-Large" Visible="False"></asp:Label>
        <p>
            &nbsp;</p>
   
    <p>
        &nbsp;</p>
   
</div>
</asp:Content>

