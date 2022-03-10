# theta
Simple bash Theta Guardian node update and restart scripts.

--/--
put/create starttheta.sh in /root/fuelup/
chomd 111 starttheta.sh

--/--
put/create fuelup in /usr/bin/
chmod 755
--/--
put/create thetaService.service in /lib/systemd/system/
chmod 644 thetaService.service

Enable thetaService.service
systemctl enable thetaService.service

Restart sytemctl daemon
systemctl daemon-reload

Try it!
Start theta to moon!
systemctl start thetaService.service

See status
systemctl status thetaService.service

See running in screen:

screen -ls

screen -R 'socket #'

Detach screen and let theta GN run.

\<ctl\> a , d
  
  
