using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    public class StudentChestNoesController : Controller
    {
        private Entities db = new Entities();

        // GET: StudentChestNoes
        public ActionResult Index()
        {
            var studentChestNoes = db.StudentChestNoes.Include(s => s.SingleParticipation).Include(s => s.Volunteer);
            return View(studentChestNoes.ToList());
        }

        // GET: StudentChestNoes/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudentChestNo studentChestNo = db.StudentChestNoes.Find(id);
            if (studentChestNo == null)
            {
                return HttpNotFound();
            }
            return View(studentChestNo);
        }

        // GET: StudentChestNoes/Create
        public ActionResult Create()
        {
            ViewBag.StudPartID = new SelectList(db.SingleParticipations, "StudPartID", "StudPartID");
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            return View();
        }

        // POST: StudentChestNoes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "StudChestID,StudPartID,ChestNo,EnteredBy,EnteredOn,UpdatedOn")] StudentChestNo studentChestNo)
        {
            if (ModelState.IsValid)
            {
                db.StudentChestNoes.Add(studentChestNo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.StudPartID = new SelectList(db.SingleParticipations, "StudPartID", "StudPartID", studentChestNo.StudPartID);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", studentChestNo.EnteredBy);
            return View(studentChestNo);
        }

        // GET: StudentChestNoes/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudentChestNo studentChestNo = db.StudentChestNoes.Find(id);
            if (studentChestNo == null)
            {
                return HttpNotFound();
            }
            ViewBag.StudPartID = new SelectList(db.SingleParticipations, "StudPartID", "StudPartID", studentChestNo.StudPartID);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", studentChestNo.EnteredBy);
            return View(studentChestNo);
        }

        // POST: StudentChestNoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "StudChestID,StudPartID,ChestNo,EnteredBy,EnteredOn,UpdatedOn")] StudentChestNo studentChestNo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(studentChestNo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.StudPartID = new SelectList(db.SingleParticipations, "StudPartID", "StudPartID", studentChestNo.StudPartID);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", studentChestNo.EnteredBy);
            return View(studentChestNo);
        }

        // GET: StudentChestNoes/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudentChestNo studentChestNo = db.StudentChestNoes.Find(id);
            if (studentChestNo == null)
            {
                return HttpNotFound();
            }
            return View(studentChestNo);
        }

        // POST: StudentChestNoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            StudentChestNo studentChestNo = db.StudentChestNoes.Find(id);
            db.StudentChestNoes.Remove(studentChestNo);
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
