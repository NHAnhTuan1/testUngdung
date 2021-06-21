using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Demo.Models;
using TestUngdung.ModelEF;

namespace Demo.Controllers
{
    public class UserController : Controller
    {
        Userdao dao = new Userdao();
        // GET: User
        public ActionResult Index(int page = 1, int pagesize = 5)
        {
            return View(dao.ListAllPaging(page, pagesize));
            
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(User acc)
        {
            dao.Insert(acc);
            return RedirectToAction("Index", "User");
        }

        public ActionResult Edit(string id)
        {
            return View(dao.Find(id));
        }
        [HttpPost]
        public ActionResult Edit(User acc)
        {
            var kt = dao.Update(acc);
            return RedirectToAction("Index", "User");
        }
        public ActionResult Delete(string id)
        {
            var tg = dao.Find(id);
            dao.Delete(tg);
            return RedirectToAction("Index");
        }
    }
}