using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using WorkSchedule.Data.Entities;
using System.ComponentModel;
using WorkSchedule.System.DAL;
using WorkSchedule.Data.POCOs;

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

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<SkillSet> Skills_List()
        {
            using (var context = new WorkScheduleContext())
            {
                var results = from x in context.Skills
                              orderby x.Description
                              select new SkillSet
                              {
                                  SkillId = x.SkillID,
                                  Description = x.Description
                              };

                return results.ToList();
            }
        }

    }
}
