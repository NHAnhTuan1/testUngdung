using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Demo.Models;
using TestUngdung.ModelEF;

namespace Demo.Controllers
{
    public class LoginController : Controller
    {
        LoginDAO dao = new LoginDAO();
        public ActionResult Index()
        {
            ViewBag.login = "Đăng Nhập";
            return View();
        }
        public ActionResult loginfalse()
        {
            ViewBag.login = "Đăng Nhập Thất Bại";
            return View("Index");
        }
        [HttpPost]
        public ActionResult KiemTraDangNhap(User acc)
        {
            var result = dao.Login(acc.userAcc, acc.password);
            if (result == 1)
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                return RedirectToAction("loginfalse");
            }

        }
    }
}