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
- ARM64 based host machine (Mac M series, Raspberry PI 5, etc.)

### Building Raspberry PI image

```bash
./build
```

The image will be created in the `deploy` directory.
