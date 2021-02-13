using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthFestival.App_Code;
using YouthFestival.Models;

namespace YouthFestival.Controllers
{
    [Authorized(Roles = Constants.SuperAdmin)]
    public class VolunteersController : BaseController
    {

        // GET: Volunteers
        public ActionResult Index()
        {
            var volunteers = db.Volunteers.Include(v => v.Credential).Include(v => v.Role);
            return View(volunteers.ToList());
        }

        // GET: Volunteers/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Volunteer volunteer = db.Volunteers.Find(id);
            if (volunteer == null)
            {
                return HttpNotFound();
            }
            return View(volunteer);
        }

        // GET: Volunteers/Create
        public ActionResult Create()
        {
            ViewBag.CredID = new SelectList(db.Credentials, "CredID", "Email");
            ViewBag.RoleID = new SelectList(db.Roles, "RoleID", "Name");
            return View();
        }

        // POST: Volunteers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(RegistrationModel reg)
        {
            ModelState.Remove("SName");
            ModelState.Remove("Sex");
            ModelState.Remove("ClgAdmistnNo");
            ModelState.Remove("DateOfBirth");
            ModelState.Remove("ColID");
            ModelState.Remove("DeptID");
            ModelState.Remove("CouID");
            ModelState.Remove("Phone");
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
                Volunteer volunteer = new Volunteer();
                volunteer.Name = reg.FName;
                volunteer.Place = reg.Place;
                volunteer.RoleID = reg.RoleID;
                volunteer.CredID = credobj.CredID;
                volunteer.EnteredOn = DateTime.UtcNow;
                volunteer.UpdatedOn = DateTime.UtcNow;
                db.Volunteers.Add(volunteer);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RoleID = new SelectList(db.Roles, "RoleID", "Name",reg.RoleID);
            return View(reg);
        }

        // GET: Volunteers/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Volunteer volunteer = db.Volunteers.Find(id);
            if (volunteer == null)
            {
                return HttpNotFound();
            }
            ViewBag.CredID = new SelectList(db.Credentials, "CredID", "Email", volunteer.CredID);
            ViewBag.RoleID = new SelectList(db.Roles, "RoleID", "Name", volunteer.RoleID);
            return View(volunteer);
        }

        // POST: Volunteers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "VolID,CredID,RoleID,Name,Place,EnteredOn,UpdatedOn")] Volunteer volunteer)
        {
            if (ModelState.IsValid)
            {
                db.Entry(volunteer).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CredID = new SelectList(db.Credentials, "CredID", "Email", volunteer.CredID);
            ViewBag.RoleID = new SelectList(db.Roles, "RoleID", "Name", volunteer.RoleID);
            return View(volunteer);
        }

        // GET: Volunteers/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Volunteer volunteer = db.Volunteers.Find(id);
            if (volunteer == null)
            {
                return HttpNotFound();
            }
            return View(volunteer);
        }

        // POST: Volunteers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            Volunteer volunteer = db.Volunteers.Find(id);
            db.Volunteers.Remove(volunteer);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
