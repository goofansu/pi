# Pi

Raspberry Pi playground based on [Nerves Project](https://www.nerves-project.org).

## Requirements

- [Raspberry Pi 4B](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/)
- [Camera Module V2](https://www.raspberrypi.org/products/camera-module-v2/)

## Develop at host

```shell
mix deps.get
mix compile
```

## Deploy to target

```shell
export MIX_TARGET=rpi4

# first time deploy
mix firmware.burn

# use script to deploy
mix firmware.gen.script
mix firmware && ./upload.sh
```
