using System;
using System.Collections.Generic;

using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel;
using WorkSchedule.Data.Entities;
using WorkSchedule.System.DAL;
using WorkSchedule.Data.POCOs;
#endregion

namespace WorkSchedule.System.BLL
{
    [DataObject]
    public class EmployeeSkillController
    {
        
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<SkillEmployee> Employees_GetBySkill(int skillId)
        {
            using (var context = new WorkScheduleContext())
            {
                var results = from x in context.EmployeeSkills
                              where x.Skill.SkillID == skillId
                              select new SkillEmployee
                              {
                                  FirstName = x.Employee.FirstName,
                                  LastName = x.Employee.LastName,
                                  HomePhone = x.Employee.HomePhone,
                                  Active = x.Employee.Active,
                                  Level = x.Level,
                                  YearsOfExperience = x.YearsOfExperience

                                  
                              };

                return results.ToList();
                              
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<SkillCategoryEmployee> GetReportEmployeeSkill()
        {
            using (var context = new WorkScheduleContext())
            {
                var results = from x in context.EmployeeSkills
                              orderby x.Skill.Description
                              select new SkillCategoryEmployee
                              {
                                  Skill = x.Skill.Description,
                                  Name = x.Employee.LastName + ", " + x.Employee.FirstName ,
                                  Phone = x.Employee.HomePhone,
                                  Level = x.Level == 1? "Novice": x.Level== 2? "Proficent": "Expert",
                                  YOE = x.YearsOfExperience

                              };

                return results.ToList();
            }
        }

        public void Register_Employee(Employee employee, List<SkillSet> skillset)
        {
            
            using (var context = new WorkScheduleContext())
            {
                Employee newEmployee = new Employee();
                newEmployee.FirstName = employee.FirstName;
                newEmployee.LastName = employee.LastName;
                newEmployee.HomePhone = employee.HomePhone;
                newEmployee = context.Employees.Add(newEmployee);

                foreach (var skill in skillset)
                {
                    EmployeeSkill newEmployeeSkill = new EmployeeSkill();
                    newEmployeeSkill.EmployeeID = newEmployee.EmployeeID;
                    newEmployeeSkill.HourlyWage = skill.HourlyWage;
                    newEmployeeSkill.Level = skill.Level;
                    newEmployeeSkill.YearsOfExperience = skill.YOE;
                    newEmployeeSkill = context.EmployeeSkills.Add(newEmployeeSkill);
                    
                }
            }
        }
    }
}
