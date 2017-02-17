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
    public class Employee
    {
        [Key]
        public int EmployeeID { get; set; }
        [Required(ErrorMessage = "First name is required")]
        [StringLength(50, ErrorMessage = "FirstName is limited to 50 characters")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "Last name is required")]
        [StringLength(50, ErrorMessage = "LastName is limited to 50 characters")]
        public string LastName { get; set; }
        [Required(ErrorMessage = "HomePhone is required")]
        public string HomePhone { get; set; }
        [Required(ErrorMessage = "Active is required")]
        public bool Active { get; set; }

        public virtual ICollection<EmployeeSkill> EmployeeSkills {get; set;}

    }
}
