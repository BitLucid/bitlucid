#!/bin/bash
echo "Copying the config files from their samples";
ln -s config/gitignoreSample .gitignore
cp config/wp-config.sample.php wp-config.php
vi wp-config.php
echo "Symlinking the virtualhost config to /etc/apache2/sites-available/"
sudo ln -s config/bit.conf.apache /etc/apache2/sites-available/bit.conf
echo "Enabling the virtualhost for bit.local."
sudo a2ensite bit.conf
echo "Creating the testing database";
echo "create database bit" >> mysql;
echo "Creating a database user bit and grant all on the database bit";
echo "CREATE USER 'bit'@'localhost' IDENTIFIED BY 'T5e3sw2t5';" >> mysql
echo "GRANT ALL ON bit.* to 'bit'@'localhost'" >> mysql
echo "You should now be able to dump the database directly from the sample database dump and have a running wordpress instance off the same set of data."
