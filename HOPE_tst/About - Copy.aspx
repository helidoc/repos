<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HOPE_tst.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>

     <div>
    <table style="width:90px;height:30px;text-align:left;margin-left:auto;margin-right:auto" border="1">
      <tbody>
        <tr>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99">Registration</td>
        </tr>
      </tbody>
    </table>
    <table style="width:1184px;height:27px" border="1">
      <tbody>
        <tr>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99">Registration</td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:173.233px">Patient
            Information</td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:110.383px">Vitals</td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:92.35px">Interview</td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:141.35px">Encounter</td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:110px">
            <table width="86" cellspacing="0" cellpadding="0" border="0">
              <colgroup><col width="86"></colgroup>
              <tbody>
                <tr height="20">
                  <td style="height:15pt;width:110.35px" height="20">Labs</td>
                </tr>
              </tbody>
            </table>
          </td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:101px">
            <table width="80" cellspacing="0" cellpadding="0" border="0">
              <colgroup><col width="80"></colgroup>
              <tbody>
                <tr height="20">
                  <td style="height:15pt;width:97px" height="20">Pharmacy</td>
                </tr>
              </tbody>
            </table>
          </td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:79px">
            <table width="87" cellspacing="0" cellpadding="0" border="0">
              <colgroup><col width="87"></colgroup>
              <tbody>
                <tr height="20">
                  <td style="height:15pt" height="20">Vitamins</td>
                </tr>
              </tbody>
            </table>
          </td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:118px">Administration</td>
          <td style="text-align:center;vertical-align:middle;background-color:#99ff99;width:112px">Miscellaneous</td>
        </tr>
      </tbody>
    </table>
    <p></p>
  </div>

<p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Patient_Key" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" Height="60px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="321px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Patient_Key" HeaderText="Patient_Key" ReadOnly="True" SortExpression="Patient_Key" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hope_tstConnectionString1 %>" SelectCommand="SELECT [Patient_Key], [FirstName], [LastName] FROM [Patients]"></asp:SqlDataSource>
</p>
    <p>Use this area to provide additional information.</p>
</asp:Content>
