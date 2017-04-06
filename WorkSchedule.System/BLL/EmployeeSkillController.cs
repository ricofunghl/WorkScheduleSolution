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
                                  FirstName = x.Employee.FirstName,
                                  LastName = x.Employee.LastName,
                                  Phone = x.Employee.HomePhone,
                                  Level = x.Level == 1? "Novice": x.Level== 2? "Proficent": "Expert",
                                  YOE = x.YearsOfExperience

                              };

                return results.ToList();
            }
        }
    }
}
