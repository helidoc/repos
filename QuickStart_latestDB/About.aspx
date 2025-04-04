<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="QuickStart_latestDB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HOPE_WW2ConnectionString %>" SelectCommand="SELECT p.FirstName, p.LastName, ml.Active_Med, mr.Med_Name,  mr.Med_Dose, mdu.Med_Dose_Unit, ml.Med_Dose, mnu.Med_Dose_Unit, mr1.Med_Route, msch.Med_Sched_Label, ml.Med_Dispense, mdd.Med_Dose_Unit Med_Disp_Unit, ml.Med_Refill
FROM dbo.Medication_List ml 
	INNER JOIN dbo.Med_Ref mr ON ( ml.FK_Med_Ref_ID = mr.Med_Ref_ID  )  
	INNER JOIN dbo.Med_Units mdu ON ( mr.FK_Med_Dose_Unit_ID = mdu.Med_Dose_Unit_ID  )  
	INNER JOIN dbo.Med_Units mdd ON ( ml.FK_Med_Disp_Unit = mdd.Med_Dose_Unit_ID  )
	inner join dbo.Med_Units mnu on (ml.FK_Med_Dose_Unit = mnu.Med_Dose_Unit_ID)
	INNER JOIN dbo.Med_Route mr1 ON ( mr.FK_Med_Route_ID = mr1.Med_Route_ID  )  
	inner join dbo.Med_Sched msch on (msch.Med_Sched_ID= ml.FK_Med_Sched_ID)
	INNER JOIN dbo.Patients p ON ( ml.FK_Patient_ID = p.Patient_ID  )  
	order by p.LastName, p.FirstName"></asp:SqlDataSource>
    </h3>
    <p>&nbsp;</p>
    <p>Use this area to provide additional information.</p>
    <p>
        &nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</asp:Content>
