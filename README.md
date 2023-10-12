# Raspberry Pi - Chromium Kiosk

Run Chromium browser in kiosk mode on Raspian Lite.

Based on this article: <https://blog.r0b.io/post/minimal-rpi-kiosk/>

## References

- Raspian operating system (download): <https://www.raspberrypi.com/software/operating-systems/>
- Raspberry pi config tool CLI: <https://www.raspberrypi.com/documentation/computers/configuration.html#list-of-options26>

## Prerequisites

- Raspberry Pi
- SD card with OS installed (see above)
- Initial OS configuration
  - User name + password
  - Internet: LAN or wifi (country, SSID, and password)
- Git installed: `sudo apt-get install git` 

## Usage

```sh
git clone URL
src/install.sh
```

## Recommended Chromium Extensions

1. Adblock Plus - free ad blocker: <https://chrome.google.com/webstore/detail/adblock-plus-free-ad-bloc/cfhdojbkjhnklbpkdaibdccddilifddb>
1. Tab Rotate: <https://chrome.google.com/webstore/detail/tab-rotate/pjgjpabbgnnoohijnillgbckikfkbjed>
1. Auto Login: <https://chrome.google.com/webstore/detail/auto-login/kjdgohfkopafhjmmlbojhaabfpndllgk>
