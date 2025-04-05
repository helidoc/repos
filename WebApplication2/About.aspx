<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <img alt="Hope_Logo" longdesc="Colorful HOPE logo" src="Images/HOPE_LOGO.png" style="width: 325px; height: 147px" /></h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <asp:Button ID="btn_print" runat="server" Text="Print!" OnClick="DoPrint" />
    <asp:Label ID="lblPrintStatus" runat="server" Text="Print Status"></asp:Label>
</asp:Content>
