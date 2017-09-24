using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class SendMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static void SendContactMessage(string name, string fromEmail, string myMessage)
    {
        const string MailServer = "smtp.1and1.com";
        const string toMail = "info@ebenchmarkplus.com";

        try
        {
            MailAddress fromAddr = new MailAddress(fromEmail);
            MailAddress toAddr = new MailAddress(toMail);
            MailMessage mail = new MailMessage(fromAddr, toAddr);

            mail.Subject = "eBenchmarkPlus Consultation Request from " + name;
            mail.Body = "Message from " + name + " at " + fromEmail + ": " + myMessage;
            mail.IsBodyHtml = false;

            SmtpClient client = new SmtpClient(MailServer, 587);
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(toMail, "f!s7434Vctre");
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