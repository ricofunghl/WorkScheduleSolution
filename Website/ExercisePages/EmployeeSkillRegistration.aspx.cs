using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WorkSchedule.System.BLL;
using WorkSchedule.Data.Entities;
using WorkSchedule.Data.POCOs;


public partial class ExercisePages_EmployeeSkillRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(FirstName.Text))
        {
            throw new Exception("First Name is required");
        }
        if (string.IsNullOrEmpty(LastName.Text))
        {
            throw new Exception("Last Name is required");
        }
        if (string.IsNullOrEmpty(Email.Text))
        {
            throw new Exception("Email is required");
        }
        else
        {
            Employee newEmployee = new Employee();
            newEmployee.FirstName = FirstName.Text;
            newEmployee.LastName = LastName.Text;
            newEmployee.HomePhone = Email.Text;

            List<SkillSet> skillsToAdd = new List<SkillSet>();
            SkillSet newSkill = new SkillSet();
            CheckBox skillSelection = null;
            int rowsSelected = 0;

            for (int i = 0; i < SkillGV.Rows.Count; i++)
            {
                skillSelection = SkillGV.Rows[i].FindControl("Skill") as CheckBox;
                if (skillSelection.Checked)
                {
                    newSkill.SkillId = int.Parse((SkillGV.Rows[i].FindControl("SkillId") as Label).Text);
                    newSkill.Description = (SkillGV.Rows[i].FindControl("Skill") as Label).Text;
                    newSkill.Level = int.Parse((SkillGV.Rows[i].FindControl("Level") as RadioButtonList).SelectedValue);
                    newSkill.YOE = int.Parse((SkillGV.Rows[i].FindControl("YOE") as TextBox).Text);
                    newSkill.HourlyWage = int.Parse((SkillGV.Rows[i].FindControl("HourlyWage") as TextBox).Text);

                    skillsToAdd.Add(newSkill);
                    rowsSelected++;
                }

                if (rowsSelected == 0)
                {
                    throw new Exception("At least one skill must be selected");
                }
            }

            
        }
    }
}