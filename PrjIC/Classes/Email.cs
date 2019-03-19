using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;

namespace PrjIC.Classes
{
    public class Email
    {
        #region Variávies internas

        private MailAddress _mailFrom;
        private string _smtpHost;
        private bool _smtpSsl;
        private string _smtpLogin;
        private string _smtpSenha;
        private int _smtpPorta;
        private int _timeOut;

        #endregion Variávies internas


        #region Propriedades públicas

        public MailAddress MailFrom
        {
            get { return this._mailFrom; }
            set { this._mailFrom = value; }
        }

        public string SmtpHost { get { return this._smtpHost; } set { this._smtpHost = value; } }
        public bool SmtpSsl { get { return this._smtpSsl; } set { this._smtpSsl = value; } }
        public string SmtpLogin { get { return this._smtpLogin; } set { this._smtpLogin = value; } }
        public string SmtpSenha { get { return this._smtpSenha; } set { this._smtpSenha = value; } }
        public int SmtpPorta { get { return this._smtpPorta; } set { this._smtpPorta = value; } }
        public int TimeOut { get { return this._timeOut; } set { this._timeOut = value; } }

        #endregion Propriedades públicas


        #region Métodos públicos

        public bool EnviarEmail(string[] emailsPara, string assunto, string mensagemHtml, string nomeArquivoAttach, byte[] fileAttach)
        {
            if (mensagemHtml.Substring(0, 1) == ".")
                mensagemHtml = mensagemHtml.Substring(1);

            MailMessage msg = new MailMessage();
            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;
                msg.Subject = assunto;
                msg.Body = mensagemHtml;

                msg.To.Add(new MailAddress(emailsPara.First()));
                if (emailsPara.Length > 1)
                    for (int i = 1; i < emailsPara.Length; i++)
                        msg.CC.Add(emailsPara[i]);

                if (fileAttach != null)
                {
                    MemoryStream fs = new MemoryStream(fileAttach, true);
                    msg.Attachments.Add(new Attachment(fs, nomeArquivoAttach));
                }
            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmail(string emailPara, string emailCopia, string assunto, string mensagemHtml, string nomeArquivoAttach, byte[] fileAttach)
        {
            if (mensagemHtml.Substring(0, 1) == ".")
                mensagemHtml = mensagemHtml.Substring(1);

            MailMessage msg = new MailMessage();
            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;
                msg.Subject = assunto;
                msg.Body = mensagemHtml;

                msg.To.Add(new MailAddress(emailPara));
                if (!String.IsNullOrEmpty(emailCopia))
                    msg.CC.Add(emailCopia);

                if (fileAttach != null)
                {
                    MemoryStream fs = new MemoryStream(fileAttach, true);
                    msg.Attachments.Add(new Attachment(fs, nomeArquivoAttach));
                }
            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmail(string emailPara, string emailCopia, string assunto, string mensagemHtml, Dictionary<string, byte[]> dicArquivos)
        {
            if (mensagemHtml.Substring(0, 1) == ".")
                mensagemHtml = mensagemHtml.Substring(1);

            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;
                msg.Subject = assunto;
                msg.Body = mensagemHtml;

                msg.To.Add(new MailAddress(emailPara));
                if (!String.IsNullOrEmpty(emailCopia))
                    msg.CC.Add(emailCopia);

                foreach (KeyValuePair<string, byte[]> arquivo in dicArquivos)
                {
                    MemoryStream fs = new MemoryStream(arquivo.Value, true);
                    msg.Attachments.Add(new Attachment(fs, arquivo.Key));
                }
            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmail(string emailPara, string emailCopia, string assunto, string mensagemHtml)
        {
            return this.EnviarEmail(emailPara, emailCopia, assunto, mensagemHtml, "", null);
        }

        public bool EnviarEmail(string emailPara, string assunto, string mensagemHtml)
        {
            return this.EnviarEmail(emailPara, "", assunto, mensagemHtml);
        }

        public bool EnviarEmail(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc, Dictionary<string, byte[]> dicArquivos)
        {
            MailMessage msg = new MailMessage();
            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;

                msg.To.Add(emailPara);

                //msg.Fi
                foreach (string item in cc)
                    //msg.To.Add(new MailAddress(item, item + "aaa"));
                    msg.Bcc.Add(item);

                foreach (KeyValuePair<string, byte[]> arquivo in dicArquivos)
                {
                    MemoryStream fs = new MemoryStream(arquivo.Value, true);
                    msg.Attachments.Add(new Attachment(fs, arquivo.Key));
                }

                msg.Subject = assunto;
                msg.Body = mensagemHtml;
            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }


        public bool EnviarEmail(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            MailMessage msg = new MailMessage();
            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;

                msg.To.Add(emailPara);

                foreach (string item in cc)
                    msg.Bcc.Add(item);

                msg.Subject = assunto;
                msg.Body = mensagemHtml;
            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmailCC(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;
                msg.To.Add(emailPara);

                foreach (string item in cc)
                    msg.CC.Add(item);

                msg.Subject = assunto;
                msg.Body = mensagemHtml;
            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmailCCO(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;
                msg.To.Add(emailPara);

                foreach (string item in cc)
                    msg.Bcc.Add(new MailAddress(item, "<" + item + ">"));

                msg.Subject = assunto;
                msg.Body = mensagemHtml;

            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmailReplayToList(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = this._mailFrom;
                msg.To.Add(emailPara);

                foreach (string item in cc)
                    msg.ReplyToList.Add(item);

                msg.Subject = assunto;
                msg.Body = mensagemHtml;
            }
            catch (Exception ex)
            {
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public static string[] GetEmails(string email)
        {
            string cEmail = email.Trim();
            while (cEmail.IndexOf("  ") >= 0)
                cEmail = cEmail.Replace("  ", " ");
            cEmail = cEmail.Replace(" ", ";");
            while (cEmail.IndexOf(",") >= 0)
                cEmail = cEmail.Replace(",", ";");
            while (cEmail.IndexOf(";;") >= 0)
                cEmail = cEmail.Replace(";;", ";");

            return cEmail.Split(';');
        }

        #endregion Métodos públicos


        #region Métodos privados

        private bool EnviarEmail(MailMessage mensagem)
        {
            bool enviado = false;
            bool stContinua = true;
            while (stContinua)
            {
                SmtpClient smtp = new SmtpClient
                {
                    Host = this.SmtpHost,
                    EnableSsl = this.SmtpSsl,
                    Timeout = this.TimeOut
                };

                if (this.SmtpPorta != -1)
                    smtp.Port = this.SmtpPorta;

                if (!string.IsNullOrEmpty(this.SmtpLogin) &&
                    !string.IsNullOrEmpty(this.SmtpSenha))
                {
                    NetworkCredential credencial = new NetworkCredential
                    {
                        UserName = this.SmtpLogin,
                        Password = this.SmtpSenha
                    };
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = credencial;
                }

                try
                {
                    smtp.Send(mensagem);
                    stContinua = false;
                    enviado = true;
                }
                catch (Exception)
                {
                    stContinua = false;
                }
            }

            return enviado;
        }

        #endregion Métodos privados
    }
}