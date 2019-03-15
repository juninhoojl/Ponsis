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
        #region Variáveis privadas e estáticas

        private static Email __email;

        #endregion Variáveis privadas e estáticas


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

        public static Email email
        {
            get
            {
                if (__email == null)
                {
                    __email = new Email
                    {
                        _mailFrom = new MailAddress("gestor@adiautomacao.com.br", "Gestor"),
                        _smtpHost = "smtp.adiautomacao.com.br",
                        _smtpLogin = "gestor@adiautomacao.com.br",
                        _smtpSenha = "gestor01*",
                        _smtpSsl = false,
                        _smtpPorta = 587,
                        _timeOut = 1000000
                    };
                }

                return __email;
            }
        }

        public static Email EmailBackup()
        {
            Email bakEmail = new Email
            {
                _mailFrom = new System.Net.Mail.MailAddress(Email.email._smtpLogin, Email.email.MailFrom.DisplayName),
                _smtpHost = Email.email._smtpHost,
                _smtpLogin = Email.email._smtpLogin,
                _smtpSenha = Email.email._smtpSenha,
                _smtpSsl = Email.email._smtpSsl,
                _smtpPorta = Email.email._smtpPorta,
                _timeOut = Email.email._timeOut
            };

            return bakEmail;
        }

        public static void EmailRestore(Email email)
        {
            //Email.email._mailFrom  = email._mailFrom;
            if (!Email.email._mailFrom.Address.Equals(email._smtpLogin) ||
                !Email.email._mailFrom.DisplayName.Equals(email._mailFrom.DisplayName))
                Email.email._mailFrom = new System.Net.Mail.MailAddress(email._smtpLogin, email.MailFrom.DisplayName);
            if (!Email.email._smtpHost.Equals(email._smtpHost))
                Email.email._smtpHost = email._smtpHost;
            if (!Email.email._smtpLogin.Equals(email._smtpLogin))
                Email.email._smtpLogin = email._smtpLogin;
            if (!Email.email._smtpSenha.Equals(email._smtpSenha))
                Email.email._smtpSenha = email._smtpSenha;
            if (!Email.email._smtpSsl.Equals(email._smtpSsl))
                Email.email._smtpSsl = email._smtpSsl;
            if (!Email.email._smtpPorta.Equals(email._smtpPorta))
                Email.email._smtpPorta = email._smtpPorta;
            if (!Email.email._timeOut.Equals(email._timeOut))
                Email.email._timeOut = email._timeOut;
        }

        public bool EnviarEmail(string[] emailsPara, string assunto, string mensagemHtml, string nomeArquivoAttach, byte[] fileAttach)
        {
            if (mensagemHtml.Substring(0, 1) == ".")
                mensagemHtml = mensagemHtml.Substring(1);

            MailMessage msg = new MailMessage();
            try
            {
                msg.IsBodyHtml = true;
                msg.From = email._mailFrom;
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
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              String.Join(";", emailsPara),
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
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
                msg.From = email._mailFrom;
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
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              emailPara,
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmail(string emailPara, string emailCopia, string assunto, string mensagemHtml, Dictionary<string, byte[]> dicArquivos)
        {
            Email email = Email.email;

            if (mensagemHtml.Substring(0, 1) == ".")
                mensagemHtml = mensagemHtml.Substring(1);

            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = email._mailFrom;
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
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              emailPara,
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
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
            Email email = Email.email;

            MailMessage msg = new MailMessage();
            try
            {
                msg.IsBodyHtml = true;
                msg.From = email._mailFrom;

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
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              emailPara,
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
                return false;
            }

            return this.EnviarEmail(msg);
        }


        public bool EnviarEmail(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            Email email = Email.email;

            MailMessage msg = new MailMessage();
            try
            {
                msg.IsBodyHtml = true;
                msg.From = email._mailFrom;

                msg.To.Add(emailPara);

                //msg.Fi
                foreach (string item in cc)
                    //msg.To.Add(new MailAddress(item, item + "aaa"));
                    msg.Bcc.Add(item);

                msg.Subject = assunto;
                msg.Body = mensagemHtml;
            }
            catch (Exception ex)
            {
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              emailPara,
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmailCC(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            Email email = Email.email;

            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = email._mailFrom;
                msg.To.Add(emailPara);

                foreach (string item in cc)
                    msg.CC.Add(item);

                msg.Subject = assunto;
                msg.Body = mensagemHtml;
            }
            catch (Exception ex)
            {
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              emailPara,
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmailCCO(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            Email email = Email.email;

            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = email._mailFrom;
                msg.To.Add(emailPara);

                foreach (string item in cc)
                    msg.Bcc.Add(new MailAddress(item, "<" + item + ">"));

                msg.Subject = assunto;
                msg.Body = mensagemHtml;

            }
            catch (Exception ex)
            {
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              emailPara,
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
                return false;
            }

            return this.EnviarEmail(msg);
        }

        public bool EnviarEmailReplayToList(string emailPara, string assunto, string mensagemHtml, IEnumerable<string> cc)
        {
            Email email = Email.email;

            MailMessage msg = new MailMessage();

            try
            {
                msg.IsBodyHtml = true;
                msg.From = email._mailFrom;
                msg.To.Add(emailPara);

                foreach (string item in cc)
                    msg.ReplyToList.Add(item);

                msg.Subject = assunto;
                msg.Body = mensagemHtml;
            }
            catch (Exception ex)
            {
                //MessageBox.Show(string.Format("Não foi possível montar o e-mail a ser enviado para '{0}'.\n\nMotivo: '{1}'.",
                //                              emailPara,
                //                              ex.Message),
                //                "Erro",
                //                MessageBoxButtons.OK);
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
                //catch (System.ArgumentNullException fe1)
                //{
                //    stContinua = (MessageBox.Show(string.Format("Não foi possível enviar e-mail para '{0}'.\n\nMotivo: '{1}'.\n\nTentar novamente?",
                //                                                mensagem.To[0].Address,
                //                                                fe1.Message),
                //                                  "Questionamento",
                //                                  MessageBoxButtons.YesNo,
                //                                  MessageBoxIcon.Question) == DialogResult.Yes);
                //}
                //catch (System.InvalidOperationException fe2)
                //{
                //    stContinua = (MessageBox.Show(string.Format("Não foi possível enviar e-mail para '{0}'.\n\nMotivo: '{1}'.\n\nTentar novamente?",
                //                                                mensagem.To[0].Address,
                //                                                fe2.Message),
                //                                  "Questionamento",
                //                                  MessageBoxButtons.YesNo,
                //                                  MessageBoxIcon.Question) == DialogResult.Yes);
                //}
                //catch (System.Net.Mail.SmtpException fe4)
                //{
                //    stContinua = (MessageBox.Show(string.Format("Não foi possível enviar e-mail para '{0}'.\n\nMotivo: '{1}'.\n\nTentar novamente?",
                //                                                mensagem.To[0].Address,
                //                                                fe4.Message),
                //                                  "Questionamento",
                //                                  MessageBoxButtons.YesNo,
                //                                  MessageBoxIcon.Question) == DialogResult.Yes);
                //}
                //catch (FormatException)
                //{
                //    stContinua = (MessageBox.Show(string.Format("Não foi possível enviar e-mail para '{0}' porque o formato do e-mail é inválido.\n\nTentar novamente?",
                //                                                mensagem.To[0].Address),
                //                                  "Questionamento",
                //                                  MessageBoxButtons.YesNo,
                //                                  MessageBoxIcon.Question) == DialogResult.Yes);
                //}
                catch (Exception)
                {
                    //stContinua = (MessageBox.Show(string.Format("Não foi possível enviar e-mail para '{0}'.\nTentar novamente?",
                    //                                            mensagem.To[0].Address),
                    //                              "Questionamento",
                    //                              MessageBoxButtons.YesNo,
                    //                              MessageBoxIcon.Question) == DialogResult.Yes);
                    stContinua = false;

                }
            }

            return enviado;
        }

        #endregion Métodos privados
    }
}