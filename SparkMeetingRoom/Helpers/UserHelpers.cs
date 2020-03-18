using SparkMeetingRoom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Helpers;

namespace SparkMeetingRoom.Helpers
{
    public static class User
    {
        public static String GetRandomSalt(Int32 size = 12)
        {
            var random = new RNGCryptoServiceProvider();
            var salt = new Byte[size];
            random.GetBytes(salt);
            return Convert.ToBase64String(salt);
        }

        public static String HashPassword(String password, String salt)
        {
            var combinedPassword = String.Concat(password, salt);
            var sha256 = new SHA256Managed();
            var bytes = UTF8Encoding.UTF8.GetBytes(combinedPassword);
            var hash = sha256.ComputeHash(bytes);
            return System.Convert.ToBase64String(hash);
        }

        public static void CreatePassword(ref RegisterViewModel model)
        {
            model.Salt = GetRandomSalt();
            model.Password = HashPassword(model.Password, model.Salt);
        }

        public static AspNetUser GetUser(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null)
            {
                return user;
            }
            return null;
        }

        public static string GetUserRole(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null && user.AspNetRoles.Count > 0)
            {
                return user.AspNetRoles.FirstOrDefault().Name;
            }
            return null;
        }

        public static string GetUserRoleId(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null && user.AspNetRoles.Count > 0)
            {
                return user.AspNetRoles.FirstOrDefault().Id;
            }
            return null;
        }

        public static int? GetUserRoleOrder(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null && user.AspNetRoles.Count > 0)
            {
                return user.AspNetRoles.FirstOrDefault().Order;
            }
            return null;
        }
    }
}