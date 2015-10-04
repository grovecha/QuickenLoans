﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.DB
{
    public class User
    {
       public User( string name, string username, string email, string password )
        {
            mName = name;
            mUserName = username;
            mEmail = email;
            mPassword = password;
        }

        public string GetName(){ return mName; }
        public string GetUserName() { return mUserName; }
        public string GetEmail() { return mEmail; }
        public string GetPassword() { return mPassword; }

        private string mName;
        private string mUserName;
        private string mEmail;
        private string mPassword;
    }

}