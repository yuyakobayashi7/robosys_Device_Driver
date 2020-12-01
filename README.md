# robosys_device_driver
This is a device driver for Raspberry Pi4

# Demonstration
https://youtu.be/NjgM8Sm-iXM

モータを使用し、GPIOのオンオフを切り替えることで擬似的にpwm制御で回転数を落とすモードを作った。
約13秒だけ動作するようにしてある。

動画ではモータの回転音での判別は難しいが、LEDの点灯で今どちらのモードなのかが分かるようになっている。

モータを起動させるための起電力が若干不足している

# Photo
![20954](https://user-images.githubusercontent.com/54259047/100732836-abb7c280-3410-11eb-8918-47ab0add1773.jpg)

![20952](https://user-images.githubusercontent.com/54259047/100733032-efaac780-3410-11eb-9038-87179eeb97a6.jpg)

![20953](https://user-images.githubusercontent.com/54259047/100732983-df92e800-3410-11eb-96a4-bc110b9886dc.jpg)

# Licence
This repository is licensed under the GPLv3 license

# References
https://github.com/rikusekiuchi/led_devicce_driver_2/blob/master/myled.c

複数のGPIOの制御に一部コードを使用しています。
