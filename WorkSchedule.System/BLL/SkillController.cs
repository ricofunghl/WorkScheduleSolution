using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using WorkSchedule.Data.Entities;
using System.ComponentModel;
using WorkSchedule.System.DAL;

#endregion

namespace WorkSchedule.System.BLL
{
    [DataObject]
    public class SkillController
    {
       
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<Skill> SkillList()
        {
            using (var context = new WorkScheduleContext())
            {
                return context.Skills.ToList();
            }
        }

    }
}
