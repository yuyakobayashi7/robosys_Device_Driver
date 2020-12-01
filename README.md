# COPYING
Copyright (C) 1994-1995, 1997, 1999-2020 Free Software Foundation, Inc.

# robosys_device_driver
This is a device driver for Raspberry Pi4

# Demonstration
https://youtu.be/NjgM8Sm-iXM

動画内では, 1 > 2 > 1 > 0  と操作している。

動画ではモータの回転音での判別が難しいが、LEDの点灯で今どのモードなのかが分かるようになっている。

# Explanation

echo 0 > /deev/myled0
GPIOの出力を止めるモード。
モータは停止、LEDは消灯する。

echo 1 > /deev/myled0
使っているGPIOを3つとも出力にするモード。
モータが全回転し、LEDは2つ点灯する。

echo 2 > /deev/myled0 
GPIOのオンオフを切り替えることで擬似的なpwm制御でモータの回転数を落とすモード。
約13秒で停止する。


# Photo
![20954](https://user-images.githubusercontent.com/54259047/100732836-abb7c280-3410-11eb-8918-47ab0add1773.jpg)

![20952](https://user-images.githubusercontent.com/54259047/100733032-efaac780-3410-11eb-9038-87179eeb97a6.jpg)

![20953](https://user-images.githubusercontent.com/54259047/100732983-df92e800-3410-11eb-96a4-bc110b9886dc.jpg)

# Licence
This repository is licensed under the GPLv3 license

# References

https://github.com/rikusekiuchi/led_devicce_driver_2/blob/master/myled.c

複数のGPIOの制御に一部コードを使用しています。

# 参考にしたコードとの違い
モータを採用し、擬似的なpwm制御での回転数を落とすモードを実装した点。
