# Smart Boarding local install

1. [Instructions for installing locally the Smart Boarding app](#summary1)
2. [Update DB](#summary4)
3. [Export WSL install under Windows 10](#summary2)
4. [Import WSL install under Windows 10](#summary3)

---

<br><br>
## Instructions for installing locally the Smart Boarding app <a name="summary1"></a>

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
    install php 7.4 and addons<br/>
    <code>apt-get install -y php7.4 php7.4-fpm php7.4-cli php7.4-json php7.4-soap php7.4-xml php7.4-bcmath php7.4-xmlrpc php7.4-bz2 php7.4-curl php7.4-mbstring php7.4-xsl php7.4-gd php7.4-intl php7.4-mysql php7.4-zip php7.4-ssh2</code>
  </li>
	<li>
		update the default limits inside '<b>/etc/php/7.4/apache2/php.ini</b>'<br/>
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
    disable the default site<br/>
    <code>a2dissite 000-default</code>
  </li>
  <li>
    create <code>www.conf</code> file inside <i>&lt;your-local-path&gt;</i> with <a href="res/www.conf">this</a> content and copy it to apache's sites folder from Ubuntu's console<br/>
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
    open mysql's console and create the DB<br/>
		<code>mysql</code><br/>
    <code>create database <i>&lt;your-DB-name&gt;</i>;</code><br//>
    * exit mysql console with <code>CTRL</code>+<code>D</code>
  </li>
  <li>
    obtain a SmartBoarding DB sql file, rename it to <code><i>&lt;your-DB-name&gt;</i>.sql</code> and copy it to <i>&lt;your-local-path&gt;</i><br/>
    then, from Ubuntu's console, copy the DB to mysql install folder<br/>
    <code>cp -i /mnt/<i>&lt;your-local-path&gt;</i>/<i>&lt;your-DB-name&gt;</i>.sql /var/lib/mysql/<i>&lt;your-DB-name&gt;</i>/</code>
  </li>
  <li>
    open mysql's console and import the DB<br/>
		<code>mysql</code><br/>
    <code>USE <i>&lt;your-DB-name&gt;</i>;</code><br/>
	  <code>SOURCE <i>&lt;your-DB-name&gt;</i>.sql;</code>
  </li>
  <li>
    still inside mysql console, create your DB user<br/>
    <code>CREATE USER '<i>&lt;your-username&gt;</i>' @'%' IDENTIFIED BY '<i>&lt;your-password&gt;</i>';</code><br/>
    <code>GRANT ALL PRIVILEGES ON * . * TO '<i>&lt;your-username&gt;</i>'@'%';</code>
  </li>
  <li>
    copy <a href="res/create_symlinks.sh">this</a> script to <i>&lt;your-local-path&gt;</i> and run it inside Ubuntu<br/>
    <code>./create_symlinks</code>
  </li>
  <li>
		create the <code>htaccess</code> file inside '<i>&lt;your-local-path&gt;</i>/phs' with <a href="res/htaccess">this</a> content
  </li>
	<li>
		update the following variables inside <code>'<i>&lt;your-local-path&gt;</i>/phs/main.php'</code>:<br/>
		<code>PHS_DB_USERNAME</code>, <code>PHS_DB_PASSWORD</code>,<br/>
		<code>PHS_DEFAULT_CRYPT_KEY</code> (according to DB env),<br/>
		<code>PHS_DEFAULT_CRYPT_INTERNAL_KEYS_ARR</code> (according to DB env)
	</li>
	<li>
		retart both <b>apache</b> and <b>mysql</b> from Ubuntu's console<br/>
		<code>service apache2 restart</code><br/>
		<code>service mysql restart</code>
	</li>
	<li>
		access <b>http://localhost/phs</b>
	</li>
</ol>
<a name="summary4"></a>
<br/><br/>

## Update the data base to last structure
from Ubuntu console run
<code>php /var/www/phs/bin/phs update</code>

---
<br/><br/>
## Export WSL install under Windows 10 <a name="summary2"></a>
<ul>
	<li>
		Get a full list of the distribution names<br/>
		<code>wsl -l -v</code>
	</li>
	<li>
		Use the cd command to navigate into the directory you want to save your export to<br/>
		<code>wsl --export <i>&lt;distribution-name&gt;</i> <i>&lt;filename&gt;</i>.tar</code><br>
		e.g.: &nbsp;&nbsp;<i>wsl --export Ubuntu-20.04 ubuntubackup.tar</i>
	</li>
</ul>
<br/>

## Import WSL install under Windows 10 <a name="summary3"></a>
<ul>
	<li>
		<code>wsl --import <i>&lt;distribution-name&gt;</i> <i>&lt;install-location&gt;</i> <i>&lt;backup-location&gt;</i>\<i>&lt;backup-filename&gt;</i>.tar</code><br/>
		e.g.: &nbsp;&nbsp;<i>wsl --import Ubuntu-20.04 C:\Users\MyPC\AppData\Local\Packages\Ubuntu C:\Users\MyPC\Documents\ubuntubackup.tar</i>
	</li>
	<li>
		To check it was imported correctly, run the <code>wsl --list</code> and you should see your newly imported distribution
	</li>
</ul>
			
	
