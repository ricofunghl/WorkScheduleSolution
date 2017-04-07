<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeSkillRegistration.aspx.cs" Inherits="ExercisePages_EmployeeSkillRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Employee Skill Registration</h1>
    <div class="row">
        <div class="col-md-10">
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="LastName" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Button ID="Register" runat="server" Text="Register" /><br /><br />
            <asp:Button ID="Clear" runat="server" Text="Clear" />
        </div>
    </div>
    <div class="row">
        <asp:ListView ID="SkillSetLV" runat="server"></asp:ListView>
    </div>

    <asp:ObjectDataSource ID="SkillSetLVODS" runat="server"></asp:ObjectDataSource>
</asp:Content>

