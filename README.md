sipper-bird
===========

The sipper-bird checks whether the local SIP server is running.  
   A relatively stupid bird, right now, sipper-bird just looks for one 
   process with the SIPServer name and if it finds none, it starts the 
   SIP server.
   
By default the sip server is started with this command string

<<<<<<< HEAD
There needs to be a cron job set for the sippy-bird - The line below 
makes the sipper-bird check on the 5th minute of every hour
=======
There needs to be a cron job set for the sipper-bird. - The line below 
added to the opensrf user's crontab list makes 
the sipper-bird check on the 5th minute of every hour
>>>>>>> 7d98b8d5f5ddbe2cc466b116833292351dfdaccc

5 * * * * /openils/bin/sipper-bird.sh
