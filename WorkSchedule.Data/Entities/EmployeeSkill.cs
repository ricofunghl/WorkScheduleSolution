using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
#endregion

namespace WorkSchedule.Data.Entities
{
    public class EmployeeSkill
    {
        [Key]
        public int EmployeeSkillID { get; set; }
        [Required(ErrorMessage ="EmployeeID is required")]
        public int EmployeeID { get; set; }
        [Required(ErrorMessage = "SkillID is required")]
        public int SkillID { get; set; }
        [Required(ErrorMessage = "Level is required")]
        public int Level { get; set; }
        public int YearsOfExperience { get; set; }
        [Required(ErrorMessage = "Hourly Wage is required")]
        public decimal HourlyWage { get; set; }

        public virtual Employee Employee { get; set; }
        public virtual Skill Skill { get; set; }
    }
}
