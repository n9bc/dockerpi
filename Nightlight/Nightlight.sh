#!/bin/bash 
# lights up each LED individually in a loop.
#!/bin/bash
#

LED_array=(0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f 0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18)
while true
do
        for i in `seq 0 24`
        do
                i2cset -y 1 0x15 ${LED_array[i]} 0xFF   # turn on the led 
                sleep 0.5                               # delay
                i2cset -y 1 0x15 ${LED_array[i]} 0x00   # turn of the led
                sleep 0.5                               # delay
        done
done
