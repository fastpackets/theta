#!/bin/bash

# Simple removes existing theta version binaries, replaces them and restarts thetaService.service
# put in /root/fuelup/
# chmod 744 updateTheta.sh

rm -f /root/theta_mainnet/bin/theta*
curl -k --output /root/theta_mainnet/bin/theta `curl -k 'https://mainnet-data.thetatoken.org/binary?os=linux&name=theta'`
curl -k --output /root/theta_mainnet/bin/thetacli `curl -k 'https://mainnet-data.thetatoken.org/binary?os=linux&name=thetacli'`
chmod +x /root/theta_mainnet/bin/theta
chmod +x /root/theta_mainnet/bin/thetacli
systemctl restart thetaService.service
