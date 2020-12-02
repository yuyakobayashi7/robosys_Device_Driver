# COPYING
(c) 2020 RyuichiUeda and YuyaKobayashi and fukuharayoshitaka

# robosys_device_driver
ロボットシステム学の課題で作ったものです。
LEDを点灯、消灯するデバイスドライバーを作成し、それに手を加えたものです。

# 実行方法
    $ git clone https://github.com/yuyakobayashi7/robosys_device_driver.git
    $ cd robosys_device_driver
    $ make
    $ sudo insmod myled.ko
    $ sudo chmod 666 /dev/myled0

# 映像
https://youtu.be/NjgM8Sm-iXM

動画内では, 1 > 2 > 1 > 0  と操作している。

動画ではモータの回転音での判別が難しいが、LEDの点灯で今どのモードなのかが分かるようになっている。

# 説明

echo 0 > /deev/myled0
GPIOの出力を止めるモード。
モータは停止、LEDは消灯する。

echo 1 > /deev/myled0
使っているGPIOを3つとも出力にするモード。
モータが全回転し、LEDは2つ点灯する。

echo 2 > /deev/myled0 
GPIOのオンオフを切り替えることでpwm制御でモータの回転数を落とすモード。
約13秒で停止する。
duty比は70%となっている


# 写真
![20954](https://user-images.githubusercontent.com/54259047/100732836-abb7c280-3410-11eb-8918-47ab0add1773.jpg)

# Licence
This repository is licensed under the GPLv3 license

# References

https://github.com/rikusekiuchi/led_devicce_driver_2/blob/master/myled.c

複数のGPIOの制御に一部コードを使用しています。

# 参考にしたコードとの違い
モータを採用し、pwm制御で回転数を落とすモードを実装した点。
