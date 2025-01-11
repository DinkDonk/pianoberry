<img src="assets/logo.svg" width="200" height="200" />

PIANOBERRY
==========


Headless* [Pianoteq](https://www.modartt.com/pianoteq_overview) on Raspberry PI 5 with [Pisound](https://blokas.io/pisound/) sound card.  
Tweaked for ~1.5ms latency at 96kHz sample rate.

<small>* Headless: without a monitor, keyboard, or mouse.</small>

## Trying

1. Download the [latest image](https://github.com/elektrofon/pianoberry/releases/latest)
2. Flash the image to a microSD card using [Raspberry Pi Imager](https://www.raspberrypi.org/software/)
3. Insert the microSD card into the Raspberry PI 5 with a Pisound sound card
4. Connect a MIDI keyboard to the Pisound MIDI input
5. Play!

## Building

### Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Pianoteq](https://www.modartt.com/pianoteq_overview) Linux Aarch64 binary
- ARM64 based host machine (Mac M series, Raspberry PI 5, etc.)

### Building Raspberry PI image with Pianoteq trial

1. Download the Pianoteq 8 Standard trial for Linux from the [Pianoteq website](https://www.modartt.com/try?file=pianoteq_linux_trial_v840.7z)
2. Place the Linux Aarch64 Pianoteq 8 trial binary in the `pianoteq` directory
3. Build:

```bash
./build
```

The image will be created in the `deploy` directory.

### Building Raspberry PI image with Pianoteq licence

1. Download the licenced Pianoteq Linux Aarch64 binary from your Modartt account
2. Place your Linux Aarch64 Pianoteq 8 binary in the `pianoteq` directory
3. Build:

```bash
./build --serial [your serial number] --initial-preset [the Pianoteq preset to load on startup]
```

The image will be created in the `deploy` directory.

### Get build options

```bash
./build --help
```

```
Usage: ./build [options]
Options:
  --serial=SERIAL            Pianoteq serial number.
                             If SERIAL is empty or --serial is not passed,
                             Pianoteq binary is assumed to be the trial version.
                             If serial is provided – Make sure you build with the
                             full version of the Pianoteq binary.
  --initial-preset=PRESET    Initial preset to load.
                             defaults to "U4 Felt II".
  --force-rebuild            Force rebuild of the pianoberry-build image.
  --help                     Show this help message.
```

### Activating Pianoteq licence

**This requires an internet connection.**  

Boot the Raspberry Pi with an ethernet cable connected.  
Make sure this cable provides internet access.

When you boot Pianoberry it will try to activate your serial.  
The process will take ~30 seconds.  
After successfull activation, the Raspberry Pi will reboot and everything should work.
Pianoberry doesn't need network access after the activation.

If you have any issues with activation – First check if the activation has registered in your Modartt account.
It should show up as hardware name `pianoberry` when clicking `Manage` to the right of `Activation slots:` on the `Registered products` tab.  
If you don't see `pianoberry` in the list check these things:

1. Check if the Raspberry Pi has internet connection
2. Check if you compiled Pianoberry with the right serial

Please do not contact Modartt support about Pianoberry activation issues.  
Open an issue in this repository instead.

---

<i><sup>
The prebuilt Pianoberry image includes a trial version of Pianoteq Standard.  
Pianoteq is redistributed courtesy of Modartt.  
Please don't redistribute the Pianoteq binary without explicit permission from Modartt.
</sup></i>
