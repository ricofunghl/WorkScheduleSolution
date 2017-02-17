using System;
using System.Collections.Generic;

using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel;
using WorkSchedule.Data.Entities;
using WorkSchedule.System.DAL;
#endregion

namespace WorkSchedule.System.BLL
{
    [DataObject]
    public class EmployeeSkillController
    {
        
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<Employee> Employees_GetBySkill(int skillId)
        {
            using (var context = new WorkScheduleContext())
            {
                var results = from x in context.EmployeeSkills
                              where x.Skill.SkillID == skillId
                              select new Employee
                              {
                                  EmployeeID = x.EmployeeID,
                                  FirstName = x.Employee.FirstName,
                                  LastName = x.Employee.LastName,
                                  HomePhone = x.Employee.HomePhone,
                                  Active = x.Employee.Active
                                  
                              };

                return results.ToList();
                              
            }
        }
    }
}
