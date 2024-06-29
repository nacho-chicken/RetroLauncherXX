# RetroLauncher XX for muOS
### Allows muOS to boot directly into RetroArch

---

Like most of my projects, this was originally purely for personal use.
My primary videogame emulation frontend on most devices is basic RetroArch.
I've grown very used to its... eccentric UI choices, and I quite like its
wealth of customization options and how freely it exposes them to the user.

Most custom firmware for retro emulation handhelds nowadays focus on
creating their own UI or porting a more general-user-friendly frontend like
EmulationStation. On the other hand, there are others like myself that are
more than satisfied staying in our finely-tuned RetroArch config instead
of using another UI that may obfuscate RA's settings or simply lack desired
features.

RetroLauncher adds an option to the Device Startup setting in muOS that,
when set, boots the system directly into RetroArch without loading any
games. You are free to change the setting back at your leisure.
Neither are you stuck in RetroArch, as you can select "Quit RetroArch"
to go back to the primary muOS UI at any point. Useful to run other games,
such as PortMaster ports or non-Libretro emulators such as PPSSPP.

---

## Before Installing
Please read the release notes in order to determine whether your device
and version of muOS is compatible.

If you download the source, `sourceinfo.txt` instead includes information
about which muOS commits these files were branched from.

Versions of RetroLauncher XX in the Releases tab are designed for stable
versions of muOS.

*Installation on an incompatible setup may damage your installation!*

---

## Install Guide
1. Place `RetroLauncher XX.zip` into the `ARCHIVE` folder.

2. Put the SD card back in your device and turn it on.

3. Install the added zip archive through muOS' Archive Manager.

4. Enter muOS' Task Toolkit and run "Install RetroLauncher XX".

5. Reboot your device.

6. Installation is complete.
You may now set "Device Startup" to "RetroArch" in the muOS settings menu.

---

## Known Issues
* _RetroArch will quit whenever content is closed._ This is due to a setting
in `retroarch.cfg` that is toggled on by default. To fix this, either set
`quit_on_close_content` to `"0"` in your `retroarch.cfg`, or toggle "Quit on
Close Content" inside RetroArch, in `Settings -> User Interface` and save your
configuration afterwards.

* _Some cores may or may not work properly when booted from RetroArch instead
of the muOS content selector._ Particularly, the Flycast and Morpheuscast
cores.

* _Wi-Fi options are not available in RetroArch and must be set from muOS'
settings._ RetroLauncher is a simple modification to muOS and does not modify
its build of RetroArch in any way.

---

---

Thanks to the muOS team & friends for their outstanding work!
Please consider supporting them:

* https://ko-fi.com/xonglebongle
* https://ko-fi.com/bgelmini
* https://ko-fi.com/antiKk
* https://ko-fi.com/cebion
* https://ko-fi.com/johnnyonflame
* https://ko-fi.com/kloptops
* https://ko-fi.com/rose254
* https://ko-fi.com/cmclark00
