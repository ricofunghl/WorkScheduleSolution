using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Data.POCOs
{
    public class SkillEmployee
    {
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string HomePhone { get; set; }
        public bool Active { get; set; }
        public int Level { get; set; }
        public int? YearsOfExperience { get; set; }
    }
}
