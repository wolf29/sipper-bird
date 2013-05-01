#!/bin/bash 
# -x
#  -*- coding: utf-8 -*-
#
#       sipper-bird.sh
#       install into /openils/bin/
#       
#       Copyright 2012 Wolf Halton <wolf@sourcefreedom.com>
#       
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#       
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#       
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.

SERVICE3='SIPServer' 

# 	Reduced functionality from jimmy-olsen-1, which also monitors
#	openSRF functions.  You cannot bring up the services as quickly as
#	jimmy-olsen-1.sh wants them to go.

if  ps aux | grep -v grep | grep -i "${SERVICE3}" > /dev/null 
then
    echo "$SERVICE3 service running, everything is fine"
     # now check that the service is responding properly as well
    /openils/bin/sip_expect_test_2
else
    echo "$SERVICE3 is not running"
    echo "$SERVICE3 is not running!" | mail -s "$SERVICE3 down" root
    oils_ctl.sh -d /openils/var/run -s /openils/conf/oils_sip.xml -a start_sip    
fi
