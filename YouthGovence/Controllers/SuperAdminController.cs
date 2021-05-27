using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    public class SuperAdminController : BaseController
    {
        // GET: SuperAdmin
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginModel log)
        {
            SuperAdmin superadobj = db.SuperAdmins.Where(x => x.Email == log.Username && x.Password == log.Password).FirstOrDefault();
            if(superadobj != null)
            {
                FormsAuthentication.SetAuthCookie(Convert.ToString(superadobj.SuAdID + "|0|0"), false);
                Session["Role"] = "0";
                return RedirectToAction("Dashboard");
            }
            return View();
        }

        public ActionResult Dashboard()
        {
            return View();
        }
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("Index","Home");
        }
    }
}