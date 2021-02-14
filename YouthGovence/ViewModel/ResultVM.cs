using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YouthGovence.Models;

namespace YouthGovence
{
    public class ResultVM
    {
        public List<IndivijualResult> indivijualresult { get; set; }
        public List<EventWiseResult> eventwiseresult { get; set; }
        public List<CollegeResult> collegeresult { get; set; }

        public List<ParticipantFeMaleResult> femaleres { get; set; }
        public List<ParticipantMaleResult> maleres { get; set; }
        public List<EventWiseHead> eventWiseHeads { get; set; }
    }

    public class EventWiseHead
    {
        public string EventName { get; set; }
        public List<FirstPrizeTbl> firstprize { get; set; }
        public List<SecondPrizeTbl> secondprize { get; set; }
        public List<ThirdPrizeTbl> thirdprize { get; set; }
    }
}