using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyOlympicDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);

            
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime)values('"+myGUID+"','"+Uid+"',GETDATE())", con);
                cmd1.ExecuteNonQuery();

                //Send Reset link via email

                String ToEmailAddress = dt.Rows[0][3].ToString ();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi,"+Username+ ",<br/><br/> Click the link below to reset your password <br/>  http://localhost:61062/RecoverPassword.aspx?id="+myGUID ;


                MailMessage PassRecMail = new MailMessage("subedisadigya@gmail.com", ToEmailAddress);


                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";


                //SmtpClient SMTP = new SmtpClient("subedisadigya@gmail.com",587);
                //SMTP.Credentials = new NetworkCredential()
                //{
                //    UserName = "subedisadigya@gmail.com";
                //     Password = "984120121S@d"
                //  
                //   };

                // SmtpClient.EnableSs1 = true;
                // Smtp.Send(PassRecMail);
                //-------
                using (SmtpClient client = new SmtpClient())
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("subedisadigya@gmail.com", "984120121S@d");
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(PassRecMail);
                }
                    lblResetPassMsg.Text = "Reset Link send ! Check your email for reset password";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                txtEmailID.Text = string.Empty;
            }
            else
            {
                lblResetPassMsg.Text = "OOps! This Email Does not exist... Try again";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                txtEmailID.Text = string.Empty;
                txtEmailID.Focus();
            }



        }

    }
}