using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestUngdung.ModelEF;

namespace Demo.Models
{
    public class Userdao
    {
        NguyenTuanContext mydb = new NguyenTuanContext();
        public IEnumerable<User> ListAllPaging(int page, int pagesize)
        {
            return mydb.User.OrderBy(x => x.userAcc).ToPagedList(page, pagesize);
        }
        public List<User> laydanhsachUser()
        {
            return mydb.User.ToList();
        }
        public User Find(string id)
        {
            return mydb.User.Find(id);
        }
        public void Insert(User user)
        {
            mydb.User.Add(user);
            mydb.SaveChanges();
        }
        public bool Update(User entityUser)
        {

            try
            {
                var user = mydb.User.Find(entityUser.userAcc);
                user.password = entityUser.password;
                user.Email = entityUser.Email;
                user.Fullname = entityUser.Fullname;
                mydb.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Delete(User entityUser)
        {
            try
            {

                mydb.User.Remove(entityUser);
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