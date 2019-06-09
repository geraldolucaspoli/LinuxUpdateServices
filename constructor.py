import smtplib

server = smtplib.SMTP_SSL('smtp.hostinger.com.br', 587)
server.login("linuxupdateservices@techpoli.info", "Br4nd_pxs029")
server.sendmail(
  "linuxupdateservices@techpoli.info",
  "locaspolix3@gmail.com",
  "this message is from python")
server.quit()
