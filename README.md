# certbot-for-centos-7
certbot for centos 7 ,standonly for server ,no need add web server!
You should add "A" parsing record on your Domain_server,EX,DOMAIN  A  Server_IP. 
This is for certbot for standonly on your cert-server.
First step!
  run install_acme.sh on your commmand line
  this is for install acme.
second step!
  run issue_cert.sh with your DOMAIN for first parameter,
  you will get your certs in /rsynccert/$DOMAIN.
  if you want renew your certs, you can run it agian!
