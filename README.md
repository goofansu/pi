# Pi

Stream photos from the camera module of Raspberry Pi 4 based on [Nerves Project](https://www.nerves-project.org).

## Requirements

- [Raspberry Pi 4B](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/)
- [Camera Module V2](https://www.raspberrypi.org/products/camera-module-v2/)

## Burn

```shell
export MIX_TARGET=rpi4
mix deps.get
mix firmware.burn
```
