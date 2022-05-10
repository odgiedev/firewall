#!/bin/bash

fl=$(tail -n1 /etc/hosts)

if [[ "$fl" == 'false' ]]
then
   echo "
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1   localhost localhost.localdomain localhost6 localhost6.localdomain6

0.0.0.0 www.facebook.com
0.0.0.0 twitter.com
0.0.0.0 www.instagram.com
0.0.0.0 www.youtube.com

true" > /etc/hosts
elif [[ "$fl" == 'true' ]]
then
    echo "
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1   localhost localhost.localdomain localhost6 localhost6.localdomain6

#0.0.0.0 www.facebook.com
#0.0.0.0 twitter.com
#0.0.0.0 www.instagram.com
#0.0.0.0 www.youtube.com

false" > /etc/hosts
else
    echo 'Something went wrong.'
fi
