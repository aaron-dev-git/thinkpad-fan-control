# Description
This simple script gives you full control over your thinkpad's noisy fans. This is a small project I dug up from a while ago. Open to bug fixes and improvements. (Credit to Kodehawa https://github.com/kodehawa for significant help). Its also based off of some other thinkpad fan control scripts (http://www.thinkwiki.org/wiki/How_to_control_fan_speed) like this, however I always struggled to get them to work on modern versions of linux. So this is updated to work with the latest kernels. Tested on Manjaro and Ubuntu. 

# Installation:
Its as simple as download `fancontrol.sh` from the master and run it using `sudo ./path/to/fancontrol.sh`!
You can also modify your /etc/bash.bashrc to start this on boot. It does require root. 

# How to configure:
There are a minimum `-ge` and maximum `-le` temperature for each level of fan speed. The lowest is level 0 with no fan. The maximum fan speed is level 7, critical speed. The temperature is measured in celsius. 

# Additional notes:
This has only ever been tested on one older thinkpad, the T420s. So your mileage may vary depending on your model and when it was released. 
