# scripts

A collection of bash scripts for my day-to-day computer usage.

## [bluetooth](./bluetooth)

The script that allows for connecting to a bluetooth device using [bluetoothctl](https://man.archlinux.org/man/extra/bluez-utils/bluetoothctl.1.en).

## [brightness](./brightness)

The script that adjusts the brightness of my screen using [brightnessctl](https://github.com/Hummer12007/brightnessctl).

## [camera](./camera)

WIP script for importing raw camera images from an SD card and opening them in [darktable](https://github.com/darktable-org/darktable).

## [delete-video](./delete-video)

A script for removing watched videos from hard drive and making na entry for them in a history file.

## [dmenu_sys](./dmenu_sys)

My go-to "menu" for doing activities such as:
- downloading yt videos to my videos directory
- removing videos and putting them in history
- selecting and displaying a video from my media directory
- importing raw images from my sdcard and opening them in darktable
- connecting to a bluetooth device
- adjusting volume output level
- adjusting brightness of screen
- unmounting external drives
- killing processes
- suspending computer
- rebooting
- shutting off system

## [download](./download)

The script that downloads the videos from yt using [yt-dlp](https://github.com/yt-dlp/yt-dlp).

## [passmenu](./passmenu)

Slightly modified version of [passmenu](https://git.zx2c4.com/password-store/tree/contrib/dmenu/passmenu), so that it uses my build of [dmenu](https://tools.suckless.org/dmenu/) instead.

## [umount](./umount)

A script for unmounting external drives using dmenu as a prompt for `lsblk` and `systemd-mount`.

## [volume](./volume)

The script that adjusts the volume a sink using [pactl](https://linux.die.net/man/1/pactl) and [amixer](https://linux.die.net/man/1/amixer).

## [watch](./watch)

The script that looks in my `~/videor` folder and allows me to select a video to view using [mpv](https://mpv.io/).
