using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.Data.Entity;
using WorkSchedule.Data.Entities;
#endregion

namespace WorkSchedule.System.DAL
{
    internal class WorkScheduleContext:DbContext
    {
        public WorkScheduleContext():base("WSDB")
        {

        }
        public DbSet<Skill> Skills { get; set; }
        public DbSet<EmployeeSkill> EmployeeSkills { get; set; }
        public DbSet<Employee> Employees { get; set; }
    }
}
