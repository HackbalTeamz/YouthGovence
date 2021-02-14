using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YouthGovence.Models;

namespace YouthGovence
{
    public class EventSheduleVM
    {
        public List<PrgShedule> date1 { get; set; }
        public List<PrgShedule> date2 { get; set; }
        public List<PrgShedule> date3 { get; set; }
        public List<PrgShedule> date4 { get; set; }
        public List<PrgShedule> date5 { get; set; }
        public List<PrgShedule> date6 { get; set; }
        public List<PrgShedule> date7 { get; set; }
        public List<PrgShedule> date8 { get; set; }
    }
    public class EventShedVM
    { 
        public string StageName { get; set; }
        public StageWiseVM StageWiseObj { get; set; }

    }
    public class StageWiseVM
    {
        public List<PrgShedule> date1 { get; set; }
    }
}