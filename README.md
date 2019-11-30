# pi.reidchatham.com

To run this on the raspberry pi first enable Swish, build the app to the pi with xcode, ssh into the pi from the terminal, then run `make run` to start the server.

**NOTE:** You can ssh into a raspberry pi on your wifi at `ssh pi@raspberrypi.local`.

## Pi
- _Download Raspbian_
[Download Raspbian for Raspberry Pi](https://www.raspberrypi.org/downloads/raspbian/)

- _Getting the image onto the pi_
[Installing operating system images - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/installation/installing-images/README.md)

- _Configure SSH & Wifi_
[Configuration - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/configuration/), [Automatically connect a Raspberry Pi to a Wifi network](https://weworkweplay.com/play/automatically-connect-a-raspberry-pi-to-a-wifi-network/)

  * In the boot folder when the sd card in inserted into your computer. Create a blank file called `ssh` with the command `touch ssh`. Create a file called [`wpa_supplicant.conf`](https://github.com/rchatham/pi.reidchatham.com/blob/master/wpa_supplicant.conf) with `touch wpa_supplicant.conf`. Enter your wifi settings `nano wpa_supplicant.conf`.

- _Find Pi's IP address_
[IP Address - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/remote-access/ip-address.md)

- _SSH into pi_
[SSH using Linux or Mac OS - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/remote-access/ssh/unix.md)

- _Using a Console Cable_
[Adafruit's Raspberry Pi Lesson 5. Using a Console Cable](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-5-using-a-console-cable/overview)

- _Get Swift on pi_
[Set up Swift environment on Raspberry Pi (part 2/2) – Sharing the passion](https://swiftreviewer.com/2018/12/21/swift-programming-on-raspberry-pi-part-2-3/)
[How To Install Swift – Swift-Arm](https://swift-arm.com/install-swift/)

- _Compile Swift project from Xcode onto pi_
[Compile Swift for Raspberry Pi by Xcode – Sharing the passion](https://swiftreviewer.com/2018/12/25/compile-swift-for-raspberry-pi-by-xcode/)

- _Using Docker Machine with the Raspberry pi_
[Setting up Docker Machine on Raspberry PI](https://gist.github.com/calebbrewer/c41cab61216d8845b59fcc51f36343a7)
    * [DOCKER-MACHINE ON RASPBERRY PI](https://www.carothers.io/blog/docker-machine-on-raspberry-pi.html)
    * [How to setup a Docker Swarm cluster with Raspberry Pi's](https://blog.hypriot.com/post/how-to-setup-rpi-docker-swarm/)

- _Other Links_
    * [Connect your Docker client to a remote Docker host](https://www.kevinkuszyk.com/2016/11/28/connect-your-docker-client-to-a-remote-docker-host/)
    * [Controlling A Raspberry Pi From A Web Browser With Vapor 3](https://www.woolseyworkshop.com/2018/12/21/controlling-a-raspberry-pi-from-a-web-browser-with-vapor-3/)
    * [Creating a Custom Shrinked Raspberry Pi Image](https://www.instructables.com/id/Creating-a-Custom-Shrinked-Raspberry-Pi-Image/)
    * [How to Clone Your Raspberry Pi SD Card for Super Easy Reinstallations](https://lifehacker.com/how-to-clone-your-raspberry-pi-sd-card-for-super-easy-r-1261113524)
    * [How to Make a Safe Shutdown Button for Raspberry Pi](https://core-electronics.com.au/tutorials/how-to-make-a-safe-shutdown-button-for-raspberry-pi.html)
    * [Read-Only Raspberry Pi](https://learn.adafruit.com/read-only-raspberry-pi)
    * [How to use dual boot on Raspberry Pi? (2 easy ways)](https://raspberrytips.com/raspberry-pi-dual-boot/)

- _Project Ideas_
    * [Turn your old speakers or Hi-Fi into Bluetooth receivers with a Raspberry Pi and this step-by-step guide](https://www.balena.io/blog/turn-your-old-speakers-or-hi-fi-into-bluetooth-receivers-using-only-a-raspberry-pi/?utm_source=efp&utm_medium=etcher&utm_campaign=balena-sound&utm_content=v4)
    * [Portable Raspberry Pi 4 computer | Hackspace magazine #24](https://www.raspberrypi.org/blog/)
    * [Build your own NAS drive with Raspberry Pi](https://www.popsci.com/build-raspberry-pi-NAS-drive/)
    * [Onion Pi - Tor WiFi Access Point](https://learn.adafruit.com/onion-pi)
    	* [Onion Pi Setup Script](https://raw.githubusercontent.com/breadtk/onion_pi/master/setup.sh)
    * [Setting up a Raspberry Pi as a WiFi access point](https://learn.adafruit.com/setting-up-a-raspberry-pi-as-a-wifi-access-point/install-software)
    * [Setting up a Raspberry Pi as a Wireless Access Point](https://www.raspberrypi.org/documentation/configuration/wireless/access-point.md)
    * [Raspberry Pi as an Ad Blocking Access Point](https://learn.adafruit.com/raspberry-pi-as-an-ad-blocking-access-point/overview)
    * [Pi-hole](https://pi-hole.net)
    	* [Pi Hole Ad Detection Display with PiTFT](https://learn.adafruit.com/pi-hole-ad-pitft-tft-detection-display)
    * [Turning your Raspberry PI Zero into a USB Gadget](https://learn.adafruit.com/turning-your-raspberry-pi-zero-into-a-usb-gadget/overview)
    	* [RPi zero Support for USB Gadget Mode](https://github.com/raspberrypi/linux/issues/1212)
    * [Mopidy is an extensible music server written in Python.](https://mopidy.com)
    	* [Mopidy-MusicBox-Webclient](https://github.com/pimusicbox/mopidy-musicbox-webclient)
    * [Pi MusicBox](https://www.pimusicbox.com)
    * [Create a Lightweight Raspberry Pi System with Raspbian Lite](https://thisdavej.com/create-a-lightweight-raspberry-pi-system-with-raspbian-lite/)
    * [Hey Siri, Open My Garage Door](https://pfandrade.me/blog/hey-siri-open-my-garage-door/)
    * [Setting Up an Active DNS to Point to a Raspberry Pi 2 With a Web Server on It](https://www.instructables.com/id/Setting-Up-an-Active-DNS-to-Point-to-a-Raspberry-P/)

- _Hats_
    * [pHAT Stack Configurator](https://pinout.xyz/phatstack)
    * [PiDRIVE Raspberry Pi HAT 1541 1581 Commodore 64 128 Vic-20 Emulator OLED Pi1541](https://commodore4ever.net/products/pidrive-raspberry-pi-hat-1541-1581-commodore-64-128-vic-20-emulator-oled-pi1541)


---

<p align="center">
    <img src="https://user-images.githubusercontent.com/1342803/36623515-7293b4ec-18d3-11e8-85ab-4e2f8fb38fbd.png" width="320" alt="API Template">
    <br>
    <br>
    <a href="http://docs.vapor.codes/3.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="https://discord.gg/vapor">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Team Chat">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/api-template">
        <img src="https://circleci.com/gh/vapor/api-template.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-5.1-brightgreen.svg" alt="Swift 5.1">
    </a>
</p>
