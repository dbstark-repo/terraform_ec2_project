#! bin/bash
    sudo yum install httpd -y
    sudo service start httpd
    sudo chkconfig httpd on
    sudo echo '<h1>Hello World from $(hostname -f)</h1>' > /var/www/html/index.html