using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YouthGovence
{
    public class StudentDashboard
    {
        public List<SingleEventVM> singlevtlist { get; set; }
        public List<GroupEventVM> grpevtlist { get; set; }
    }
    public class SingleEventVM
    {
        public string EventName { get; set; }
    }
    public class GroupEventVM
    {
        public string EventName { get; set; }
    }
}
