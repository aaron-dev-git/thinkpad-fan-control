# thinkpad-fan-control description. 
Allows you to control the fan of older thinkpad laptop with noisy fans. Should work on most models of thinkpads from a few years ago, no idea about modern thinkpads. 

# Description
This simple script gives you full control over your thinkpad's fans. This is a small project I dug up from a while ago. Open to bug fixes and improvements. (Credit to Kodehawa https://github.com/kodehawa for significant help)

# Installation:
Its as simple as download `fancontrol.sh` from the master and run it using ./path/to/fancontrol.sh!
You can also modify your /etc/bash.bashrc to start this on boot. It shouldn't require root privelages. 

# How to configure:
`There are a minimum `-ge` and maximum `-le` temperature for each level of fan speed. The lowest is level 0 with no fan. The maximum fan speed is level 7, critical speed. The temperature is measured in celsius. 

# Additional notes:
This has only ever been tested on one older thinkpad, the T420s. So your mileage may vary depending on your model and when it was released. 
