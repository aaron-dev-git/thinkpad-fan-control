#!/bin/su root

#what is ur sensor called like on the sensors command
CPU_PREFIX="temp1"
#this is probably the worst command ever but it works
CPU_TEMP=$(sensors | grep "$CPU_PREFIX")
CPU_CUT=${CPU_TEMP#*+}
#do the magic stuff
while true; 
do
CPU_TEMP=$(sensors | grep "$CPU_PREFIX")
CPU_CUT=${CPU_TEMP#*+}

    if [ "${CPU_CUT%%.*}" -le 60 ]
    then
            echo level 1 | tee /proc/acpi/ibm/fan
    fi

    if [ "${CPU_CUT%%.*}" -ge 65 ] && [ "${CPU_CUT%%.*}" -le 70 ]
    then
            echo level 2 | tee /proc/acpi/ibm/fan
    fi

    if [ "${CPU_CUT%%.*}" -ge 70 ] && [ "${CPU_CUT%%.*}" -le 75 ]    
    then
               echo level 3 | tee /proc/acpi/ibm/fan
    fi

    if [ "${CPU_CUT%%.*}" -ge 75 ] && [ "${CPU_CUT%%.*}" -le 80 ]
    then
            echo level 4 | tee /proc/acpi/ibm/fan
    fi

    if [ "${CPU_CUT%%.*}" -ge 80 ] && [ "${CPU_CUT%%.*}" -le 85 ]
    then
            echo level 5 | tee /proc/acpi/ibm/fan
    fi

    if [ "${CPU_CUT%%.*}" -ge 85 ] && [ "${CPU_CUT%%.*}" -le 90 ]
    then
            echo level 6 | tee /proc/acpi/ibm/fan
    fi

    if [ "${CPU_CUT%%.*}" -ge 90 ]
    then
            echo level 7 | tee /proc/acpi/ibm/fan
    fi
    
    sleep 2;
done
