<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DataboundControlsLinqQuery.aspx.cs" Inherits="ExercisesPage_DataboundControlsLinqQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <div class="col-md-3">
            <asp:Label ID="Label1" runat="server" Text="Employee Skill"></asp:Label>
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="SkillList" runat="server" DataSourceID="SkillListODS" DataTextField="Description" DataValueField="SkillID"></asp:DropDownList>
            <asp:Button ID="Search" runat="server" Text="Search" />
            <asp:ObjectDataSource ID="SkillListODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SkillList" TypeName="WorkSchedule.System.BLL.SkillController">
            </asp:ObjectDataSource>
        </div>
    </div>
    <div class="row">

        <asp:GridView ID="EmployeeGV" runat="server" AutoGenerateColumns="False" DataSourceID="SkillODS">
            <Columns>
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone"></asp:BoundField>
                <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active"></asp:CheckBoxField>
                <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level"></asp:BoundField>
                <asp:BoundField DataField="YearsOfExperience" HeaderText="YearsOfExperience" SortExpression="YearsOfExperience"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="SkillODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Employees_GetBySkill" TypeName="WorkSchedule.System.BLL.EmployeeSkillController">
            <SelectParameters>
                <asp:ControlParameter ControlID="SkillList" PropertyName="SelectedValue" DefaultValue="0" Name="skillId" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

