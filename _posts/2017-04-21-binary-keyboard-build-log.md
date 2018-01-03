---
layout: post
title: Binary Keyboard Build Log
date: 2017-04-21
categories: Keyboards
---

![GIF of use](/images/binarybuild/maingif.gif)

# Background

After building the [Ergodox keyboard]({% post_url 2017-03-08-ergodox-build-log %}) a few months prior, I wanted to make something that was the complete opposite in every way. I also wanted a different project from [Internet Xmas Tree](https://github.com/Chris-Johnston/Internet-Xmas-Tree) and [Patio Lights](https://github.com/Chris-Johnston/PatioLightsHost) that didn't involve NeoPixels.

Binary keyboards [**have** been done before](https://github.com/duckythescientist/BinaryKeyboard). My goal was not to replicate these other projects, but instead to try and create the *most ridiculous keyboard I could*.

Judging from the reception I received from others both online and in person, I think I accomplished this.

## Reception

My goal was to make a working version of this project for a makerfest my school was hosting. I stayed up all night finishing up this version of the keyboard, as well as uploading my source code, pictures, and GIFs to the [GitHub repo](https://github.com/Chris-Johnston/BinaryKeyboard). While I was up, I thought it would be fun to upload one of those gifs to [/r/MechanicalKeyboards](https://github.com/Chris-Johnston/BinaryKeyboard).

*And then this happened.*

![Screenshot of Reddit post with 13.1K points.](/images/binarybuild/reddit screenshot.jpg)

I *might* have been checking my phone constantly for the 48 hours following that.

I found that most of the comments were one of a few things (in no particular order):

1. Suggesting the keyboard's use for the game Osu!
2. Suggesting I play Dark Souls with it.
3. Questioning why I typed from least significant bit to most significant bit. (I added the option to pick in [this commit](https://github.com/Chris-Johnston/BinaryKeyboard/commit/8c26b709d78090d8bb76e2dc1e359d4b5347b95c).)
4. Suggesting that I make a Morse code keyboard with 1 button. (I thought about that, but I feel like getting the timings down would be tricky.)
5. Or just [interesting ASCII art](/images/binarybuild/reddit comments.JPG).

And then it got featured on Hackaday.

![Hackaday Post](/images/binarybuild/hackaday.jpg)

And BoingBoing.
![BoingBoing Post where they spelled my name wrong](/images/binarybuild/boingboing.jpg)

> Chris Johnstone

Johnston, not 'Johnstone'. But cool regardless.

Neat, Adafruit!

![Adafruit post](/images/binarybuild/adafruit.jpg)

In addition, it got featured at a bunch of other places. What I find funny is that the majority of the traffic came from ycombinator.com (Hacker News), a website I've never visited myself (before this). That initial blip on the GitHub traffic graph was from the inital Reddit post, the rest is the aftershock of it.
![Screenshot of GitHub traffic](/images/binarybuild/traffic.JPG)

By far the most rewarding part of this experience is the feedback. Some people love it, some are contributing and suggesting changes and improvements, and a few sound like they are going to build their own which is **cool**. *(If you build your own, please show me pictures.)*

# The Build

I first created a prototype of this back in early January.

Initially I was planning on using a Digispark, however I found that it didn't have enough I/O and memory (only 6K!) to do what I wanted.

![Digispark image](/images/binarybuild/digispark.jpg)

Instead, I used a $3 Arduino Pro Micro knockoff from AliExpress.

![Image of Arduino Pro Micro knockoff](/images/binarybuild/promicro.jpg)

*Disclaimer: Most of my WIP images are from Snapchat. I only happened to have my phone on me.*

![GIF of breadboard prototype typing](/images/binarybuild/breadboard.gif)

A lot of the stuff in the end result is found here, the two buttons (in this case jumper wires), a screen showing binary values, same components.

The next step was to make this a more reliable solution, so I made it on some pegboard with some parts I had lying around.

![Image of breadboard next to circuitboard used for creating second prototype.](/images/binarybuild/tofirstversion.jpg)

A bit of soldering later...

![GIF of assembled second prototype.](/images/binarybuild/assembled.gif)

... and it worked on the first try!

*Fast forward a few months.*

By this point I had made a schematic & board layout in Eagle, and my next step was to make the circuitboard. (Board layout will be added to repo once I can verify one that works.)

The initial plan was to use my school's CNC machines to engrave away the copper traces on a copper board, but we couldn't figure out how to get that working. *If anyone reading has an Inventables Carvey and has done this, please contact me.*

Failing to get the CNC machine to work, I opted to etch the copper board using chemicals (Ferric Chloride). I used resist paper which made the task really easy, all I had to do was run it through a laminator a few times.

![Image of circuit on resist paper](/images/binarybuild/resistPaper.jpg)

On the second time I used less tape. Also I found to ensure printing in B&W, and not greyscale. Greyscale will mess with the thickness of traces.

![Image of copper board with resist](/images/binarybuild/copperBoardWithResist.jpg)

![Image of copper board being etched away](/images/binarybuild/etchingAway.jpg)

And after some time...

![Image of board after being etched.](/images/binarybuild/etchedBoard.jpg)

I removed the resist using acetone. I think some of the resist caused that smudge, which is weird because this didn't happen on my duplicate board. Oh well.

And now is when I noticed a problem with this circuit design.

![Zoomed in image](/images/binarybuild/tinytraces.jpg)

A lot of these traces are too small, and the holes are also too small. Beginner mistake I suppose. Because of this, I wasn't able to use this board.

I ran out of time to make a circuitboard from scratch for the makerfest that upcoming friday, so I had to stick with a pegboard.

I was able to copy the outline of the Cherry MX switch from [bishboria/ErgoDox 's acrylic case design](https://github.com/bishboria/ErgoDox/blob/master/ErgoDox%20Acrylic%20Case/ErgoDOX%20Acrylic%20Case%20-%20Designed%20by%20Litster/Standard/Left/ErgoDOX%20Case%20Layer%203%20Plate%20-%20Left.dxf). Using that, and with some help from people in the Makerspace, we were able to use the CNC to cut out this shape from the pegboard.

![Pegboard with space for Cherry MX switch.](/images/binarybuild/pegboardwithholes.jpg)

Now I could insert the MX switch in this hole, and it would snap securely in place. I made another prototype, and while I was at it, added backlighting.

I like how Cherry MX switches have space for LEDs. Now I just need to figure out a solution for RGB *as many have requested*.

![Cherry MX switch with LED](/images/binarybuild/cherrywithled.jpg)

![Switch in board](/images/binarybuild/switchInBoard.jpg)

![Image of third prototype](/images/binarybuild/thirdprototype.jpg)

I don't think anyone picked up on it, but the screen is displaying upside down in this photo. I took this right after I finished the build, but before I had the chance to actually go in and clean up and re-work a lot of the code.

The night before the makerfest, I was able to finalize the software side of things. I don't really have many pictures to show, it was mostly code cleanup, adding functions for backlighting, and flipping the screen around.

## Live Demo

I made a demo kiosk using an Raspberry Pi and an HDMI screen. It would just boot up into the desktop environment and load Chromium in 'kiosk' mode to the webpage. It was really laggy and didn't work great, but it at least provided testers a place to type. I made sure to print out some ASCII tables as well so that people could properly use it.

![Image of makerfest stand setup](/images/binarybuild/makerfestsetup.jpg)

## //todo

I'm not sure what my plans are for continuing this. Ideally, I would like to be able to manufacture some of these circuitboards, and maybe share them around with others.
