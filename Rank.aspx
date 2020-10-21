<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Rank.aspx.cs" Inherits="Rank" Title="Untitled Page" %>

<%@ Register assembly="System.Web.DataVisualization, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:absolute; top: 0px; left: 0px; height: 526px; width: 905px;">

        <asp:Chart ID="Chart1" runat="server" 
            style="position: absolute; top: 88px; left: 252px; height: 526px; width: 453px">
            <Legends>
                <asp:Legend Name="Legend1">
                </asp:Legend>
                <asp:Legend Name="Legend2">
                </asp:Legend>
                <asp:Legend Name="Legend3">
                </asp:Legend>
            </Legends>
            <series>
                <asp:Series Legend="Legend1" Name="Available">
                </asp:Series>
                <asp:Series ChartArea="ChartArea1" Legend="Legend1" Name="SerInfo">
                </asp:Series>
                <asp:Series ChartArea="ChartArea1" Legend="Legend1" Name="SerNeed">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>

</div>
</asp:Content>

