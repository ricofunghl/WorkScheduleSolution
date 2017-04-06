<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="ExercisePages_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetReportEmployeeSkill" TypeName="WorkSchedule.System.BLL.EmployeeSkillController"></asp:ObjectDataSource>
</asp:Content>

