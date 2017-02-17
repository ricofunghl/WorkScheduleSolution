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
    public class Skill
    {
        [Key]
        public int SkillID { get; set; }
        [Required(ErrorMessage = "Description is required")]
        [StringLength(100, ErrorMessage = "Description is limited to 100 characters")]
        public string Description { get; set; }
        [Required(ErrorMessage = "RequiresTicket is required")]
        public bool RequiresTicket { get; set; }

        public virtual ICollection<EmployeeSkill> EmployeeSkills { get; set; }
    }
}
