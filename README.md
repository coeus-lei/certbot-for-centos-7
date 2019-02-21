# certbot-for-centos-7
certbot for centos 7 ,standonly for server ,no need add web server!

This is for certbot for standonly on your cert-server.
First step!
  run produce_cert on your commmand line
  this is for install certbot and add DNS plugin. in this case ,i chose cloudflare plugin。
  before you run it , you should set your cloudflare API and EMAIL,ok that's all,let's encrypt!
second step!
  run cerbot_single_domian, input your DOMAIN,then Need to do this interactively,type Y and continue
  you will get your certs in /etc/letsencrypt/archive/$DOMAIN.
  if you want renew your certs, you can run it agian.and then you should type 2 for renew,but 1 if for cancel!
notice!
  The myfuns is a function file for command line integration that cerbot_single_domian needs it! that's all !
 
