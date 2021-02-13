using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YouthFestival.App_Code;
using YouthFestival.Models;

namespace YouthFestival.Controllers
{
    //[Authorized(Roles = Constants.Students)]
    public class EventRegistrationController : BaseController
    {
        // GET: EventRegistration
        public ActionResult Index()
        {
            return View();
        }
        //public ActionResult SingleEvent()
        //{
        //    ViewBag.SinEvtID = new SelectList(db.SingleEvents, "SinEvtID", "Name");
        //    //ViewBag.StudID = new SelectList(db.Students, "StudID", "RegID");
        //    return View();
        //}
        //[HttpPost]
        //public ActionResult SingleEvent(SingleEvent singleEvent)
        //{
        //    SingleParticipation singl = new SingleParticipation();
        //    singl.StudID = Convert.ToInt64(GlobalVariables.GlobelUserId);
        //    singl.SinEvtID = singleEvent.SinEvtID;
        //    singl.EnteredOn = DateTime.UtcNow;
        //    singl.UpdatedOn = DateTime.UtcNow;
        //    db.SingleParticipations.Add(singl);
        //    ViewBag.SinEvtID = new SelectList(db.SingleEvents, "SinEvtID", "Name");
        //    //ViewBag.StudID = new SelectList(db.Students, "StudID", "RegID");
        //    return View();
        //}
    }
}