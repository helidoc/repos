<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HOPE_tst._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>HOPE WORLDWIDE CENTRAL AMERICA</h1>
        <p class="lead">Medication List</p>
        <p class="lead">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MED_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="MED_ID" HeaderText="MED_ID" ReadOnly="True" SortExpression="MED_ID" />
                    <asp:BoundField DataField="Med_Name" HeaderText="Med_Name" SortExpression="Med_Name" />
                    <asp:BoundField DataField="Med_Dose" HeaderText="Med_Dose" SortExpression="Med_Dose" />
                    <asp:BoundField DataField="Med_Route" HeaderText="Med_Route" SortExpression="Med_Route" />
                    <asp:BoundField DataField="Patient_Key" HeaderText="Patient_Key" SortExpression="Patient_Key" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hope_tstConnectionString1 %>" DeleteCommand="DELETE FROM [Medications] WHERE [MED_ID] = @MED_ID" InsertCommand="INSERT INTO [Medications] ([MED_ID], [Med_Name], [Med_Dose], [Med_Route], [Patient_Key]) VALUES (@MED_ID, @Med_Name, @Med_Dose, @Med_Route, @Patient_Key)" ProviderName="<%$ ConnectionStrings:Hope_tstConnectionString1.ProviderName %>" SelectCommand="SELECT [MED_ID], [Med_Name], [Med_Dose], [Med_Route], [Patient_Key] FROM [Medications]" UpdateCommand="UPDATE [Medications] SET [Med_Name] = @Med_Name, [Med_Dose] = @Med_Dose, [Med_Route] = @Med_Route, [Patient_Key] = @Patient_Key WHERE [MED_ID] = @MED_ID">
                <DeleteParameters>
                    <asp:Parameter Name="MED_ID" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MED_ID" Type="Int64" />
                    <asp:Parameter Name="Med_Name" Type="String" />
                    <asp:Parameter Name="Med_Dose" Type="String" />
                    <asp:Parameter Name="Med_Route" Type="String" />
                    <asp:Parameter Name="Patient_Key" Type="Int64" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Med_Name" Type="String" />
                    <asp:Parameter Name="Med_Dose" Type="String" />
                    <asp:Parameter Name="Med_Route" Type="String" />
                    <asp:Parameter Name="Patient_Key" Type="Int64" />
                    <asp:Parameter Name="MED_ID" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p class="lead">&nbsp;</p>
        <p class="lead">
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="False" ShowEditButton="False" ShowSelectButton="False" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Patient_Key" HeaderText="Patient_Key" SortExpression="Patient_Key" />
                    <asp:BoundField DataField="MED_ID" HeaderText="MED_ID" SortExpression="MED_ID" />
                    <asp:BoundField DataField="Med_Name" HeaderText="Med_Name" SortExpression="Med_Name" />
                    <asp:BoundField DataField="Med_Dose" HeaderText="Med_Dose" SortExpression="Med_Dose" />
                    <asp:BoundField DataField="Med_Route" HeaderText="Med_Route" SortExpression="Med_Route" />
                    <asp:BoundField DataField="Patient_Key1" HeaderText="Patient_Key1" SortExpression="Patient_Key1" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hope_tstConnectionString1 %>" DeleteCommand="DELETE FROM [Patients] WHERE [Patient_Key] = @Patient_Key" InsertCommand="INSERT INTO [Patients] ([FirstName], [LastName], [Patient_Key]) VALUES (@FirstName, @LastName, @Patient_Key)" SelectCommand="get_patients" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [Patients] SET [FirstName] = @FirstName, [LastName] = @LastName WHERE [Patient_Key] = @Patient_Key">
                <DeleteParameters>
                    <asp:Parameter Name="Patient_Key" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Patient_Key" Type="Int64" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Patient_Key" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
