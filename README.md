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
		update default limits inside '<b>/etc/php/7.4/apache2/php.ini</b>'<br/>
		<code>upload_max_filesize=64M</code><br/>
		<code>post_max_size=64M</code>
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
    create <code>www.conf</code> file inside <i>&lt;your-local-path&gt;</i> with <a href="res/www.conf">this</a> content and copy it to apache's sites folder<br/>
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
    run <code>mysql</code> inside Ubuntu console and create the DB from mysql console<br/>
    <code>create database kyc_DB;</code><br//>
    * exit mysql console with <code>CTRL</code>+<code>D</code>
  </li>
  <li>
    obtain a DB sql file, rename it to <code>kyc_DB.sql</code> and opy it to <i>&lt;your-local-path&gt;</i><br/>
    then, copy the DB to mysql install folder<br/>
    <code>cp -i /mnt/<i>&lt;your-local-path&gt;</i><br/>/kyc_DB.sql /var/lib/mysql/kyc_DB/</code>
  </li>
  <li>
    run <code>mysql</code> inside Ubuntu console and import the DB from mysql console<br/>
    <code>USE kyc_DB;</code><br/>
	  <code>SOURCE kyc_DB.sql;</code>
  </li>
  <li>
    also, inside mysql console create your DB user<br/>
    <code>CREATE USER '<i>&lt;your-username&gt;</i>' @'%' IDENTIFIED BY '<i>&lt;your-password&gt;</i>';</code><br/>
    <code>GRANT ALL PRIVILEGES ON * . * TO '<i>&lt;your-username&gt;</i>'@'%';</code>
  </li>
  <li>
    copy <a href="res/make_symlink.sh">this</a> script to <i>&lt;your-local-path&gt;</i> and run it inside Ubuntu<br/>
    <code>./make_symlink</code>
  </li>
  <li>
		create the <code>htaccess</code> file inside '<i>&lt;your-local-path&gt;</i>/phs' with <a href="res/htaccess">this</a> content
  </li>
	<li>
		update the following variables inside <code>'<i>&lt;your-local-path&gt;</i>/phs/main.php'</code>:<br/>
		<code>PHS_DB_USERNAME</code>, <code>PHS_DB_PASSWORD</code>, <code>PHS_DEFAULT_CRYPT_KEY</code> (according to DB env), <code>PHS_DEFAULT_CRYPT_INTERNAL_KEYS_ARR</code> (according to DB env)
	</li>
	<li>
		retart both <b>apache</b> and <b>mysql</b> from Ubuntu console<br/>
		<code>service apache2 restart</code><br/>
		<code>service mysql restart</code>
	</li>
	<li>
		access <b>http://localhost/phs</b>
	</li>
</ol>
