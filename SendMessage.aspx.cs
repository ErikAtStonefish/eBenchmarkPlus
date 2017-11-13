using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class SendMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static void SendContactMessage(string name, string building, string phonenum, string fromEmail, string myMessage)
    {
        const string MailServer = "smtp.1and1.com";
        const string toMail = "info@ebenchmarkplus.com";

        try
        {
            MailAddress fromAddr = new MailAddress(fromEmail);
            MailAddress toAddr = new MailAddress(toMail);
            MailMessage mail = new MailMessage(fromAddr, toAddr);
            StringBuilder sbBody = new StringBuilder();
            sbBody.AppendLine(string.Format("Customer Name: {0}", name));
            sbBody.AppendLine(string.Format("Building: {0}", building));
            sbBody.AppendLine(string.Format("Phone Number {0}", phonenum));
            sbBody.AppendLine(string.Format("Customer Email: {0}", fromEmail));
            sbBody.AppendLine();
            sbBody.AppendFormat("Message: {0}", myMessage);

            mail.Subject = "eBenchmarkPlus Consultation Request from " + name;
            mail.Body = sbBody.ToString();
            mail.IsBodyHtml = false;

            SmtpClient client = new SmtpClient(MailServer, 587);
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(toMail, "***");
            client.Send(mail);
        }
        catch (Exception e)
        {
            if (!EventLog.SourceExists("eBenchMarkPlus"))
            {
                EventLog.CreateEventSource("eBenchMarkPlus", "WebSiteLog");
            }

            EventLog ebpLog = new EventLog();
            ebpLog.Source = "eBenchMarkPlus";

            ebpLog.WriteEntry(e.Message);
        }
    }
}