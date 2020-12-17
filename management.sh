#! /bin/bash

echo 'Enter the group name: '
read grp_name

echo 'Enter the user name: '
read usr

#add the user with the group
groupadd $grp_name
useradd -g $grp_name -s /bin/bash $usr

#assign password 
echo '1234' | passwd --stdin $usr > /dev/null

mkdir /$usr
chown $usr:$grp_name /$usr

chmod 1770 /$usr
