using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace YouthGovence
{
    public class WelcomeEmailHelper
    {
        public void WelcomeEmailSend(string Name, string Username, string RegID, string EmailVerificationCode)
        {
            string textFile = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/Template/RegistrationEmail.txt");
            string Body = File.ReadAllText(textFile);
            //string username = "Divya Raj D S";
            //string password = HttpUtility.UrlEncode("138011000");
            //string sender = "help@hackbal.com";
            //string emailSubject = "Welcome Email";
            string messageBody = string.Format(Body, Name, Username, RegID, EmailVerificationCode);
            Task<string> a = SendMail(messageBody, "Welcome Email", "contact@hackbal.com", Username);
        }

        public async Task<string> SendMail(string Body, string Subject, string Email, string ToMail)
        {
            try
            {
                //var message = new MailMessage();
                //message.To.Add(new MailAddress(ToMail));
                //message.From = new MailAddress(Email);
                //message.Bcc.Add("abdullasirajudeen@gmail.com");
                //message.Subject = Subject;
                //message.Body = Body;
                //message.IsBodyHtml = true;
                //using (var smtpClient = new SmtpClient())
                //{
                //    smtpClient.UseDefaultCredentials = false;
                //    smtpClient.Host = "mail.hackbal.com";
                //    smtpClient.Port = 465;
                //    smtpClient.EnableSsl = true;
                //    smtpClient.Credentials = false ?
                //        CredentialCache.DefaultNetworkCredentials :
                //        new NetworkCredential("project@hackbal.com", "Test@123");
                //    smtpClient.Send(message);
                //}
                var message = new MailMessage();
                message.To.Add(new MailAddress(ToMail));
                message.From = new MailAddress(Email);
                message.Bcc.Add("abdullasirajudeen@gmail.com");
                message.Subject = Subject;
                message.Body = Body;
                message.IsBodyHtml = true;
                using (var smtpClient = new SmtpClient())
                {
                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Host = "smtp.gmail.com";
                    smtpClient.Port = 587;
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = false ?
                        CredentialCache.DefaultNetworkCredentials :
                        new NetworkCredential("kinghusachu@gmail.com", "kinghuz@123");
                    smtpClient.Send(message);
                }

            }
            catch(Exception ex)
            {
                log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
                log.Error(ex);
            }
      
            return "";
        }
    }
    
}