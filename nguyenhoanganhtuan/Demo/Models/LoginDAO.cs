using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestUngdung.ModelEF;

namespace Demo.Models
{
    public class LoginDAO
    {
        NguyenTuanContext mydb = new NguyenTuanContext();
        public int Login(string user, string pass)
        {
            var result = mydb.User.Where(x => x.userAcc.Contains(user) && x.password.Contains(pass));
            if (result == null)
            {
                return 0;
            }
            else
            {
                return 1;
            }
        }
    }
}