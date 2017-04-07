<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeSkillRegistration.aspx.cs" Inherits="ExercisePages_EmployeeSkillRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Employee Skill Registration</h1>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="LastName" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" /><br /><br />
            <asp:Button ID="Clear" runat="server" Text="Clear" />
        </div>
    </div>
    <div class="row">
    <%--    <asp:ListView ID="SkillSetLV" runat="server" DataSourceID="SkillSetLVODS">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Checkbox Text='<%# Eval("Description") %>' runat="server" ID="DescriptionCheckBox"/></td>
                    <td>
                        <asp:RadioButtonList ID="LevelRadioButtonList" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Text="Novice"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Proficent"></asp:ListItem>
                            <asp:ListItem  Value ="3" Text="Expert"></asp:ListItem>
                        </asp:RadioButtonList>
                    <td>
                        <asp:Textbox runat="server" ID="YOELabel" /></td>
                    <td>
                        <asp:Textbox runat="server" ID="HourlyWageLabel" /></td>
                </tr>
            </AlternatingItemTemplate>
<%--            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                    </td>

                    <td>
                        <asp:Checkbox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Level") %>' runat="server" ID="LevelTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("YOE") %>' runat="server" ID="YOETextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("HourlyWage") %>' runat="server" ID="HourlyWageTextBox" /></td>
                </tr>
   <%--         </EditItemTemplate>--%>
 <%--           <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>--%>--%>
           <%-- <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:Checkbox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionCheckbox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Level") %>' runat="server" ID="LevelTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("YOE") %>' runat="server" ID="YOETextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("HourlyWage") %>' runat="server" ID="HourlyWageTextBox" /></td>
                </tr>
            </InsertItemTemplate>--%>
           <%-- <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Checkbox Text='<%# Eval("Description") %>' runat="server" ID="DescriptionCheckbox" /></td>
                    <td>
                         <asp:RadioButtonList ID="LevelRadioButtonList" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Text="Novice"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Proficent"></asp:ListItem>
                            <asp:ListItem  Value ="3" Text="Expert"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:Textbox Text="" runat="server" ID="YOE" /></td>
                    <td>
                        <asp:Textbox Text="" runat="server" ID="HourlyWage" /></td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                <tr runat="server" style="">
                                    <th runat="server">Skill</th>
                                    <th runat="server">Level</th>
                                    <th runat="server">YOE</th>
                                    <th runat="server">HourlyWage</th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder"></tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager runat="server" ID="DataPager1">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Checkbox Text='<%# Eval("Description") %>' runat="server" ID="DescriptionCheckbox" /></td>
                   <td>
                         <asp:RadioButtonList ID="LevelRadioButtonList" runat="server" RepeatDirection="horizontal">
                            <asp:ListItem Value="1" Text="Novice"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Proficent"></asp:ListItem>
                            <asp:ListItem  Value ="3" Text="Expert"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:Textbox runat="server" ID="YOELabel" /></td>
                    <td>
                        <asp:Textbox runat="server" ID="HourlyWageLabel" /></td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>--%>--%>
        <asp:GridView ID="SkillGV" runat="server" AutoGenerateColumns="False" DataSourceID="SkillSetLVODS">
            <Columns>
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="SkillId" SortExpression="SkillId" Visible="False">
                    <ItemTemplate>
                        <asp:Label ID="SkillId" DataField="SkillId" Mode="ReadOnly" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Description" SortExpression="Description">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Text='<%# Bind("Description") %>' ID="Skill"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Level" SortExpression="Level">
                    <ItemTemplate>
                        <asp:RadioButtonList runat="server" ID="Level">
                            <asp:ListItem Value="1" Text="Novice"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Proficent"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Expert"></asp:ListItem>
                        </asp:RadioButtonList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="YOE" SortExpression="YOE">
                    <ItemTemplate>
                        <asp:TextBox runat="server" Text="" ID="YOE"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HourlyWage" SortExpression="HourlyWage">
                    <ItemTemplate>
                        <asp:TextBox runat="server" Text="" ID="HourlyWage"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>

    <asp:ObjectDataSource ID="SkillSetLVODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Skills_List" TypeName="WorkSchedule.System.BLL.SkillController"></asp:ObjectDataSource>
</asp:Content>

