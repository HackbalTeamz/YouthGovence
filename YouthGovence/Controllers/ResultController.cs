using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YouthFestival.Models;

namespace YouthFestival.Controllers
{
    public class ResultController : BaseController
    {
        // GET: Result
        public ActionResult Index()
        {
            ResultVM resultvm = new ResultVM();
            resultvm.indivijualresult = db.IndivijualResults.OrderByDescending(x=>x.StudPoint).ToList();
            resultvm.eventwiseresult = db.EventWiseResults.OrderBy(x => x.EventName).ToList();
            resultvm.collegeresult = db.CollegeResults.OrderByDescending(x => x.CollegePoint).ToList();
            List<EventWiseHead> eventhedlist = new List<EventWiseHead>();
            //Updated on 3-3
            foreach(var item in db.EventWiseResults)
            {
                EventWiseHead eventWiseHead = new EventWiseHead();
                eventWiseHead.EventName = item.EventName;
                eventWiseHead.firstprize = new List<FirstPrizeTbl>();
                eventWiseHead.secondprize = new List<SecondPrizeTbl>();
                eventWiseHead.thirdprize = new List<ThirdPrizeTbl>();
                foreach (var item2 in db.FirstPrizeTbls.Where(x=>x.EventID == item.EvntID))
                {
                    eventWiseHead.firstprize.Add(item2);
                }
                foreach (var item3 in db.SecondPrizeTbls.Where(x => x.EventID == item.EvntID))
                {
                    eventWiseHead.secondprize.Add(item3);
                }
                foreach (var item4 in db.ThirdPrizeTbls.Where(x => x.EventID == item.EvntID))
                {
                    eventWiseHead.thirdprize.Add(item4);
                }
                eventhedlist.Add(eventWiseHead);
            }
            resultvm.eventWiseHeads = eventhedlist;
            return View(resultvm);
        }

        public ActionResult CollegeWiseResult()
        {
            ResultVM resultvm = new ResultVM();
            resultvm.indivijualresult = db.IndivijualResults.OrderByDescending(x => x.StudPoint).ToList();
            resultvm.eventwiseresult = db.EventWiseResults.OrderBy(x => x.EventName).ToList();
            resultvm.collegeresult = db.CollegeResults.OrderByDescending(x => x.CollegePoint).ToList();
            return View(resultvm);
        }
        public ActionResult PartMaleResult()
        {
            ResultVM resultvm = new ResultVM();
            //resultvm.indivijualresult = db.IndivijualResults.OrderByDescending(x => x.StudPoint).ToList();
            //resultvm.eventwiseresult = db.EventWiseResults.OrderBy(x => x.EventName).ToList();
            //resultvm.collegeresult = db.CollegeResults.OrderByDescending(x => x.CollegePoint).ToList();
            resultvm.maleres = db.ParticipantMaleResults.OrderByDescending(x => x.StudPoint).ToList();
            return View(resultvm);
        }
        public ActionResult PartFeMaleResult()
        {
            ResultVM resultvm = new ResultVM();
            //resultvm.indivijualresult = db.IndivijualResults.OrderByDescending(x => x.StudPoint).ToList();
            //resultvm.eventwiseresult = db.EventWiseResults.OrderBy(x => x.EventName).ToList();
            ////resultvm.collegeresult = db.CollegeResults.OrderByDescending(x => x.CollegePoint).ToList();
            resultvm.femaleres = db.ParticipantFeMaleResults.OrderByDescending(x => x.StudPoint).ToList();
            return View(resultvm);
        }
    }
}