using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    public class RegistrationController : BaseController
    {
        // GET: Registration
        public ActionResult Index()
        {
            ViewBag.ColID = new SelectList(db.Colleges, "ColID", "Name");
            ViewBag.DeptID = new SelectList(db.Departments, "DeptID", "Name");
            ViewBag.CouID = new SelectList(db.Courses, "CouID", "Name");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(RegistrationModel reg)
        {
            if (db.Credentials.Where(x => x.Email == reg.Email).FirstOrDefault() == null)
            {

                if (ModelState.IsValid)
                {
                    Credential credobj = new Credential();
                    credobj.Email = reg.Email;
                    credobj.IsEmailVerify = false;
                    credobj.EmailVerificationCode = RandomNoGenerater.RandomString(10);
                    credobj.Password = reg.Password;
                    credobj.EnteredOn = DateTime.UtcNow;
                    credobj.UpdatedOn = DateTime.UtcNow;
                    db.Credentials.Add(credobj);
                    db.SaveChanges();
                    Student studobj = new Student();
                    studobj.CredID = credobj.CredID;
                    studobj.FName = reg.FName;
                    studobj.SName = reg.SName;
                    studobj.Sex = reg.Sex;
                    studobj.ClgAdmistnNo = reg.ClgAdmistnNo;
                    studobj.DateOfBirth = reg.DateOfBirth;
                    studobj.ColID = reg.ColID;
                    studobj.DeptID = reg.DeptID;
                    studobj.CouID = reg.CouID;
                    studobj.Phone = reg.Phone;
                    studobj.IsPhoneVerify = false;
                    studobj.PhoneVerificationCode = RandomNoGenerater.RandomString(10);
                    studobj.IsCollegeApproved = false;
                    studobj.IsEligibilityApproved = false;
                    studobj.IsChestNoProvided = false;
                    studobj.EnteredOn = DateTime.UtcNow;
                    studobj.UpdatedOn = DateTime.UtcNow;
                    db.Students.Add(studobj);
                    db.SaveChanges();
                    studobj.RegID = "C00" + reg.ColID + "D00" + studobj.DeptID + "S00" + studobj.StudID;
                    db.Entry(studobj).State = EntityState.Modified;
                    try
                    {
                        db.SaveChanges();
                        WelcomeEmailHelper emailhelper = new WelcomeEmailHelper();
                        emailhelper.WelcomeEmailSend(reg.FName + " " + reg.SName, reg.Email, studobj.RegID, credobj.EmailVerificationCode);
                        return RedirectToAction("Success", "Registration", new { RegID = studobj.RegID });
                    }
                    catch (DbEntityValidationException e)
                    {

                    }
                    
                }
            }
            else
            {
                ViewBag.Error = "Email Exist, Please Login";
            }
            ViewBag.ColID = new SelectList(db.Colleges, "ColID", "Name");
            ViewBag.DeptID = new SelectList(db.Departments, "DeptID", "Name");
            ViewBag.CouID = new SelectList(db.Courses, "CouID", "Name");
            return View();
        }
        public ActionResult Success(string RegID)
        {
            return View("","",RegID);
        }
    }
}