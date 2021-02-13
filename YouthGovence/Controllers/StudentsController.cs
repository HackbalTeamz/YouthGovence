using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthFestival.Models;

namespace YouthFestival.Controllers
{
    public class StudentsController : BaseController
    {

        // GET: Students
        public ActionResult Index()
        {
            var students = db.Students.Include(s => s.Course).Include(s => s.Credential).Include(s => s.Department).Include(s => s.College);
            return View(students.ToList());
        }

        // GET: Students/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.Students.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        // GET: Students/Create
        public ActionResult Create()
        {
            ViewBag.CouID = new SelectList(db.Courses, "CouID", "Name");
            ViewBag.CredID = new SelectList(db.Credentials, "CredID", "Email");
            ViewBag.DeptID = new SelectList(db.Departments, "DeptID", "Name");
            ViewBag.ColID = new SelectList(db.Colleges, "ColID", "Name");
            return View();
        }

        // POST: Students/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "StudID,CredID,RegID,FName,SName,Sex,ClgAdmistnNo,DateOfBirth,ProPic,ColID,DeptID,CouID,Phone,IsPhoneVerify,PhoneVerificationCode,IsCollegeApproved,IsEligibilityApproved,IsChestNoProvided,CollegeApprovedBy,EligibilityApprovedBy,ChestNoProvidedBy,EnteredOn,UpdatedOn")] Student student)
        {
            if (ModelState.IsValid)
            {
                db.Students.Add(student);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CouID = new SelectList(db.Courses, "CouID", "Name", student.CouID);
            ViewBag.CredID = new SelectList(db.Credentials, "CredID", "Email", student.CredID);
            ViewBag.DeptID = new SelectList(db.Departments, "DeptID", "Name", student.DeptID);
            ViewBag.ColID = new SelectList(db.Colleges, "ColID", "Name", student.ColID);
            return View(student);
        }

        // GET: Students/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.Students.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            ViewBag.CouID = new SelectList(db.Courses, "CouID", "Name", student.CouID);
            ViewBag.CredID = new SelectList(db.Credentials, "CredID", "Email", student.CredID);
            ViewBag.DeptID = new SelectList(db.Departments, "DeptID", "Name", student.DeptID);
            ViewBag.ColID = new SelectList(db.Colleges, "ColID", "Name", student.ColID);
            return View(student);
        }

        // POST: Students/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "StudID,CredID,RegID,FName,SName,Sex,ClgAdmistnNo,DateOfBirth,ProPic,ColID,DeptID,CouID,Phone,IsPhoneVerify,PhoneVerificationCode,IsCollegeApproved,IsEligibilityApproved,IsChestNoProvided,CollegeApprovedBy,EligibilityApprovedBy,ChestNoProvidedBy,EnteredOn,UpdatedOn")] Student student)
        {
            if (ModelState.IsValid)
            {
                db.Entry(student).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CouID = new SelectList(db.Courses, "CouID", "Name", student.CouID);
            ViewBag.CredID = new SelectList(db.Credentials, "CredID", "Email", student.CredID);
            ViewBag.DeptID = new SelectList(db.Departments, "DeptID", "Name", student.DeptID);
            ViewBag.ColID = new SelectList(db.Colleges, "ColID", "Name", student.ColID);
            return View(student);
        }

        // GET: Students/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.Students.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        // POST: Students/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            Student student = db.Students.Find(id);
            db.Students.Remove(student);
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
