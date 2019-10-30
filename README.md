# pi.reidchatham.com

To run this on the raspberry pi first enable Swish, build the app to the pi with xcode, ssh into the pi from the terminal, then run `make run` to start the server.


## Pi
- _Download Raspbian_
[Download Raspbian for Raspberry Pi](https://www.raspberrypi.org/downloads/raspbian/)

- _Getting the image onto the pi_
[Installing operating system images - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/installation/installing-images/README.md)

- _Configure SSH & Wifi_
[Configuration - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/configuration/), [Automatically connect a Raspberry Pi to a Wifi network](https://weworkweplay.com/play/automatically-connect-a-raspberry-pi-to-a-wifi-network/)
   * I don't know why nobody says this but you can ssh into a raspberry pi on your wifi at `ssh pi@raspberrypi.local`

- _Find Pi's IP address_
[IP Address - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/remote-access/ip-address.md)

- _SSH into pi_
[SSH using Linux or Mac OS - Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/remote-access/ssh/unix.md)

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

- _Project Ideas_
   * [Turn your old speakers or Hi-Fi into Bluetooth receivers with a Raspberry Pi and this step-by-step guide](https://www.balena.io/blog/turn-your-old-speakers-or-hi-fi-into-bluetooth-receivers-using-only-a-raspberry-pi/?utm_source=efp&utm_medium=etcher&utm_campaign=balena-sound&utm_content=v4)
   * [Portable Raspberry Pi 4 computer | Hackspace magazine #24](https://www.raspberrypi.org/blog/)
   * [Build your own NAS drive with Raspberry Pi](https://www.popsci.com/build-raspberry-pi-NAS-drive/)
    

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
