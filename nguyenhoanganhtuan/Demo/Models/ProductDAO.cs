using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestUngdung.ModelEF;

namespace Demo.Models
{
    public class ProductDAO
    {
        NguyenTuanContext mydb = new NguyenTuanContext();

        public List<Sanpham> laydanhsachSanPham()
        {
            return mydb.Sanpham.ToList();
        }
        public void Insert(Sanpham user)
        {
            mydb.Sanpham.Add(user);
            mydb.SaveChanges();
        }
        public Sanpham Find(string id)
        {
            return mydb.Sanpham.Find(id);
        }
        public bool Update(Sanpham pr)
        {

            try
            {
                var user = mydb.Sanpham.Find(pr.id);
                user.Ten = pr.Ten;
                user.Gia = pr.Gia;
                mydb.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Delete(Sanpham pr)
        {
            try
            {

                mydb.Sanpham.Remove(pr);
                mydb.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}