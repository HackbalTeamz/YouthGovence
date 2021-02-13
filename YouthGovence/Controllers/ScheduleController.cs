using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YouthFestival.Models;

namespace YouthFestival.Controllers
{
    public class ScheduleController : BaseController
    {
        // GET: Schedule
        public ActionResult Index()
        {
            EventSheduleVM evntlist = new EventSheduleVM();
            List<PrgShedule> date1 = db.PrgShedules.Where(x=>x.SheduleDate.ToString() == "2020-03-02").OrderBy(x=>x.Stage).ToList();
            evntlist.date1 = date1;
            List<PrgShedule> date2 = db.PrgShedules.Where(x => x.SheduleDate.ToString() == "2020-03-03").OrderBy(x => x.Stage).ToList();
            evntlist.date2 = date2;
            List<PrgShedule> date3 = db.PrgShedules.Where(x => x.SheduleDate.ToString() == "2020-03-04").OrderBy(x => x.Stage).ToList();
            evntlist.date3 = date3;
            List<PrgShedule> date4 = db.PrgShedules.Where(x => x.SheduleDate.ToString() == "2020-03-05").OrderBy(x => x.Stage).ToList();
            evntlist.date4 = date4;
            List<PrgShedule> date5 = db.PrgShedules.Where(x => x.SheduleDate.ToString() == "2020-03-06").OrderBy(x => x.Stage).ToList();
            evntlist.date5 = date5;
            List<PrgShedule> date6 = db.PrgShedules.Where(x => x.SheduleDate.ToString() == "2020-03-07").OrderBy(x => x.Stage).ToList();
            evntlist.date6 = date6;
            List<PrgShedule> date7 = db.PrgShedules.Where(x => x.SheduleDate.ToString() == "2020-03-08").OrderBy(x => x.Stage).ToList();
            evntlist.date7 = date7;
            List<PrgShedule> date8 = db.PrgShedules.Where(x => x.SheduleDate.ToString() == "2020-03-09").OrderBy(x => x.Stage).ToList();
            evntlist.date8 = date8;
            //EventShedVM eventShedVM = new EventShedVM();
            //if(eventShedVM.StageName == )
            return View(evntlist);
        }
    }
}