# Smart Boarding local install
<br/>
instructions for installing locally the Smart Boarding app
<br/><br/>
<ol>
  <li>
    install Ubuntu from Microsoft Store
  </li>
  <li>
    create your user + switch to sudo mode <code>sudo su</code>
  </li>
  <li>
    update all and install apache <br/>
    <code>apt update</code><br/>
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
    <code>ln -sfn /mnt/<i>&lt;your local path&gt;</i> /var/www</code>
  </li>
  <li>
    disable default site<br/>
    <code>a2dissite 000-default</code>
  </li>
  <li>
    
  </li>
</ol>
