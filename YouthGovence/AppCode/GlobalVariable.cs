using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace YouthGovence.AppCode
{
    public static class GlobalVariables
    {
        // readonly variable
        public static string GlobelUserId
        {
            get
            {
                try
                {
                    return FormsAuthentication.Decrypt(HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName].Value).Name.Split('|')[0];

                }
                catch (Exception)
                {
                    return null;
                }

            }
        }
        public static string GlobelRole
        {
            get
            {
                try
                {
                    return FormsAuthentication.Decrypt(HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName].Value).Name.Split('|')[1];
                }
                catch (Exception)
                {

                    return null;
                }

            }
        }
        public static string GlobelCredId
        {
            get
            {
                try
                {
                    return FormsAuthentication.Decrypt(HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName].Value).Name.Split('|')[2];
                }
                catch (Exception)
                {

                    return null;
                }

            }
        }
    }
}