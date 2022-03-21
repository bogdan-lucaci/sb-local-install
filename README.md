# Smart Boarding local install
<br/>
instructions for installing locally the Smart Boarding app
<br/><br/>
<ol>
  <li>
    clone <b><a href="https://github.com/tipul07/phs">phs</a></b> and <b><a href="https://github.com/Smart2Pay/Onboarding">onboarding</a></b> into <i>&lt;your-local-path&gt;</i><br/>
    <code>git clone https://github.com/tipul07/phs ./phs</code><br/>
    <code>git clone https://[git token]@github.com/Smart2Pay/Onboarding ./onboarding</code>
  </li>
  <li>
    install Ubuntu from Microsoft Store
  </li>
  <li>
    create your user + switch to sudo mode <code>sudo su</code>
  </li>
  <li>
    type <code>php</code> in console and if php is missing or version is lower than 7.4 -> install php<br/>
    <code>apt-install php7.4</code><br/>
    solved some issues in the past:<br/>
    <code>apt-get install -y php7.4 php7.4-fpm php7.4-cli php7.4-json php7.4-soap php7.4-xml php7.4-bcmath php7.4-xmlrpc php7.4-bz2 php7.4-curl php7.4-mbstring php7.4-xsl php7.4-gd php7.4-intl php7.4-mysql php7.4-zip php7.4-ssh2</code>
  </li>  
  <li>
    update all, install some utils (if needed) and apache<br/>
    <code>apt update</code><br/>
    <code>apt-get update && apt-get install -y curl imagemagick apt-utils software-properties-common openssl cron mc git zip telnet</code><br/>
    <code>apt install apache2</code><br/>
    check if <b>http://localhost/</b> is accessible and apache installed correctly
  </li>
  <li>
    navigate to '/var' and remove 'www' folder<br/>
    <code>cd /var/</code><br/>
    <code>rm -rf www</code>
  </li>
  <li>
    create the symlink for your local project to 'www' folder<br/>
    <code>ln -sfn /mnt/<i>&lt;your-local-path&gt;</i> /var/www</code>
  </li>
  <li>
    disable default site<br/>
    <code>a2dissite 000-default</code>
  </li>
  <li>
    create inside your <i>&lt;your-local-path&gt;</i> <code>www.conf</code> file with <a href="res/www.conf">this</a> content and copy it to apache's sites folder<br/>
    <code>cp -i /mnt/<i>&lt;your-local-path&gt;</i>/www.conf /etc/apache2/sites-available/</code>
  </li>
  <li>
    enable the added site<br/>
    <code>a2ensite www</code>
  </li>
  <li>
    install and start mysql<br/>
    <code>apt-get install mysql-server mysql-client libmysqlclient-dev</code><br/>
    <code>service mysql start</code>
  </li>
  <li>
    
  </li>
</ol>
