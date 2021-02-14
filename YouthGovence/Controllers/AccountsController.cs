using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using YouthGovence.AppCode;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    public class AccountsController : BaseController
    {
        // GET: Accounts
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginModel log)
        {
            if (ModelState.IsValid)
            {
                Credential credobj = db.Credentials.Where(x => x.Email == log.Username && x.Password == log.Password).FirstOrDefault();
                if (credobj != null)
                {
                    Volunteer volobj = db.Volunteers.Where(x => x.CredID == credobj.CredID).FirstOrDefault();
                    if (volobj != null)
                    {
                        FormsAuthentication.SetAuthCookie(Convert.ToString(volobj.VolID + "|" + volobj.RoleID + "|" + credobj.CredID), false);
                        Session["Role"] = volobj.RoleID;
                        if(volobj.RoleID == Convert.ToInt32(Constants.NewsUpdater))
                        {
                            return RedirectToAction("Index","News");
                        }
                        if (volobj.RoleID == Convert.ToInt32(Constants.GalleryUpdater))
                        {
                            return RedirectToAction("Index", "ImageGalleries");
                        }
                        return RedirectToAction("Dashboard");
                    }
                    else
                    {
                        Student studobj = db.Students.Where(x => x.CredID == credobj.CredID).FirstOrDefault();
                        if (studobj != null)
                        {
                            FormsAuthentication.SetAuthCookie(Convert.ToString(studobj.StudID + "|" + Constants.Students + "|" + credobj.CredID), false);
                            Session["Role"] = Constants.Students;
                            return RedirectToAction("Dashboard");
                        }
                    }

                }
            }
            return View(log);
        }
        [Authorized(Roles = Constants.StageVolenteer+","+Constants.FrontVolenteer+","+Constants.Students)]
        public ActionResult Dashboard()
        {
            if (Session["Role"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            long UserID = Convert.ToInt64(GlobalVariables.GlobelUserId);
            StudentDashboard studobj = new StudentDashboard();
            List<SingleEventVM> singetobjlist = new List<SingleEventVM>();
            List<SingleParticipation> singpartobj = db.SingleParticipations.Where(x => x.StudID == UserID).ToList();
            foreach(var item in singpartobj)
            {
                SingleEventVM singetobj = new SingleEventVM();
                singetobj.EventName = item.SingleEvent.Name;
                singetobjlist.Add(singetobj);
            }
            studobj.singlevtlist = singetobjlist;
            List<GroupEventVM> grpevnobjlist = new List<GroupEventVM>();
            List<GroupHeadParticipation> grphedobj = db.GroupHeadParticipations.Where(x => x.TeamHeadID == UserID).ToList();
            if(grphedobj==null)
            {
                List<GroupMemParticiapation> grpmemobj = db.GroupMemParticiapations.Where(x => x.TeamMemID == UserID).ToList();
                foreach(var item2 in grpmemobj)
                {
                    GroupEventVM grpevntobj = new GroupEventVM();
                    grpevntobj.EventName = item2.GroupHeadParticipation.GrpEvent.Name;
                    grpevnobjlist.Add(grpevntobj);
                }
            }
            else
            {
                foreach (var item2 in grphedobj)
                {
                    GroupEventVM grpevntobj = new GroupEventVM();
                    grpevntobj.EventName = item2.GrpEvent.Name;
                    grpevnobjlist.Add(grpevntobj);
                }
            }
            studobj.grpevtlist = grpevnobjlist;
            return View(studobj);
        }
    }
}