<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Meds.aspx.cs" Inherits="HOPE_tst.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Patient Selection</h3>

     <div>
    <p>All Patients</p>
  </div>

<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Patient_ID" DataSourceID="PatientList" Width="1244px">
        <Columns>
            <asp:BoundField DataField="Patient_ID" HeaderText="Patient_ID" InsertVisible="False" ReadOnly="True" SortExpression="Patient_ID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastNamePaternal" HeaderText="LastNamePaternal" SortExpression="LastNamePaternal" />
            <asp:BoundField DataField="Calle_Address" HeaderText="Calle_Address" SortExpression="Calle_Address" />
            <asp:BoundField DataField="Municipality" HeaderText="Municipality" SortExpression="Municipality" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastNameMaternal" HeaderText="LastNameMaternal" SortExpression="LastNameMaternal" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="DPI#" HeaderText="DPI#" SortExpression="DPI#" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="PatientList" runat="server" ConnectionString="<%$ ConnectionStrings:HOPE_WW2ConnectionString %>" SelectCommand="SELECT * FROM [Patients]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="FillPatientDropDown" DataTextField="Patient_txt" DataValueField="Patient_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="FillPatientDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:HOPE_WW2ConnectionString %>" SelectCommand="FillDropBox" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="PatientMedList" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastNamePaternal" HeaderText="LastNamePaternal" SortExpression="LastNamePaternal" />
            <asp:CheckBoxField DataField="Active_Med" HeaderText="Active_Med" SortExpression="Active_Med" />
            <asp:BoundField DataField="Med_Name" HeaderText="Med_Name" SortExpression="Med_Name" />
            <asp:BoundField DataField="Med_Strength" HeaderText="Med_Strength" SortExpression="Med_Strength" />
            <asp:BoundField DataField="Med_Unit" HeaderText="Med_Unit" SortExpression="Med_Unit" />
            <asp:BoundField DataField="Med_Amt" HeaderText="Med_Amt" SortExpression="Med_Amt" />
            <asp:BoundField DataField="Med_Amt_Unit" HeaderText="Med_Amt_Unit" SortExpression="Med_Amt_Unit" />
            <asp:BoundField DataField="Med_Route" HeaderText="Med_Route" SortExpression="Med_Route" />
            <asp:BoundField DataField="Med_Sched_Label" HeaderText="Med_Sched_Label" SortExpression="Med_Sched_Label" />
            <asp:BoundField DataField="Alt_Language" HeaderText="Alt_Language" SortExpression="Alt_Language" />
            <asp:BoundField DataField="Med_Dispense" HeaderText="Med_Dispense" SortExpression="Med_Dispense" />
            <asp:BoundField DataField="Med_Disp_Unit" HeaderText="Med_Disp_Unit" SortExpression="Med_Disp_Unit" />
            <asp:BoundField DataField="Med_Refill" HeaderText="Med_Refill" SortExpression="Med_Refill" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="PatientMedList" runat="server" ConnectionString="<%$ ConnectionStrings:HOPE_WW2ConnectionString %>" SelectCommand="Med_List" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="2" Name="p1" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Hello!"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
