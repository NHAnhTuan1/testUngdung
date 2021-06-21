using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestUngdung.ModelEF;
using Demo.Models;

namespace Demo.Controllers
{
    
    public class SanPhamController : Controller
    {
        ProductDAO dao = new ProductDAO();
        public ActionResult Index()
        {
            var model = dao.laydanhsachSanPham();
            return View(model);
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Sanpham acc)
        {

            dao.Insert(acc);
            return RedirectToAction("Index");
        }


        public ActionResult Edit(string id)
        {
            var content = dao.Find(id);
            return View(content);
        }
        [HttpPost]
        public ActionResult Edit(Sanpham acc)
        {

            var kt = dao.Update(acc);
            return RedirectToAction("Index");
        }
        public ActionResult Delete(string id)
        {
            var tg = dao.Find(id);
            dao.Delete(tg);
            return RedirectToAction("Index");
        }
    }
}