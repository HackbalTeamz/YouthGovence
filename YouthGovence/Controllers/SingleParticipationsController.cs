using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthGovence.AppCode;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    [Authorized(Roles = Constants.Students)]
    public class SingleParticipationsController : Controller
    {
        private Entities db = new Entities();

        // GET: SingleParticipations
        public ActionResult Index()
        {
            long UserID = Convert.ToInt64(GlobalVariables.GlobelUserId);
            var singleParticipations = db.SingleParticipations.Include(s => s.SingleEvent).Include(s => s.Student).Where(x=>x.StudID == UserID);
            return View(singleParticipations.ToList());
        }

        // GET: SingleParticipations/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SingleParticipation singleParticipation = db.SingleParticipations.Find(id);
            if (singleParticipation == null)
            {
                return HttpNotFound();
            }
            return View(singleParticipation);
        }

        // GET: SingleParticipations/Create
        public ActionResult Create()
        {
            if (Session["Role"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.SinEvtID = new SelectList(db.SingleEvents, "SinEvtID", "Name");
            ViewBag.StudID = new SelectList(db.Students, "StudID", "RegID");
            return View();
        }

        // POST: SingleParticipations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(SingleParticipation singleParticipation)
        {
            if (ModelState.IsValid)
            {
                singleParticipation.StudID = Convert.ToInt64(GlobalVariables.GlobelUserId);
                SingleParticipation singexi = db.SingleParticipations.Where(x => x.StudID == singleParticipation.StudID && x.SinEvtID == singleParticipation.SinEvtID).FirstOrDefault();
                if(singexi== null)
                {
                    singleParticipation.EnteredOn = DateTime.UtcNow;
                    singleParticipation.UpdatedOn = DateTime.UtcNow;
                    db.SingleParticipations.Add(singleParticipation);
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }

            ViewBag.SinEvtID = new SelectList(db.SingleEvents, "SinEvtID", "Name", singleParticipation.SinEvtID);
            ViewBag.StudID = new SelectList(db.Students, "StudID", "RegID", singleParticipation.StudID);
            return View(singleParticipation);
        }

        // GET: SingleParticipations/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SingleParticipation singleParticipation = db.SingleParticipations.Find(id);
            if (singleParticipation == null)
            {
                return HttpNotFound();
            }
            ViewBag.SinEvtID = new SelectList(db.SingleEvents, "SinEvtID", "Name", singleParticipation.SinEvtID);
            ViewBag.StudID = new SelectList(db.Students, "StudID", "RegID", singleParticipation.StudID);
            return View(singleParticipation);
        }

        // POST: SingleParticipations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(SingleParticipation singleParticipation)
        {
            if (ModelState.IsValid)
            {
                singleParticipation.StudID = Convert.ToInt64(GlobalVariables.GlobelUserId);
                singleParticipation.UpdatedOn = DateTime.UtcNow;
                db.Entry(singleParticipation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.SinEvtID = new SelectList(db.SingleEvents, "SinEvtID", "Name", singleParticipation.SinEvtID);
            ViewBag.StudID = new SelectList(db.Students, "StudID", "RegID", singleParticipation.StudID);
            return View(singleParticipation);
        }

        // GET: SingleParticipations/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SingleParticipation singleParticipation = db.SingleParticipations.Find(id);
            if (singleParticipation == null)
            {
                return HttpNotFound();
            }
            return View(singleParticipation);
        }

        // POST: SingleParticipations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            SingleParticipation singleParticipation = db.SingleParticipations.Find(id);
            db.SingleParticipations.Remove(singleParticipation);
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
