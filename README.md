# weirdgets
XPEHO Mobile weird Flutter widgets library

# Summary

[Available weirdgets](weirdgets/README.md#available-weirdgets)
    
* [Diagonal](weirdgets/README.md#diagonal)
* [Multiggle](weirdgets/README.md#multiggle)
* [Troggle](weirdgets/README.md#troggle)
* [JaimPaMaggle](weirdgets/README.md#jaimpamaggle)
* [RevertedTextField](weirdgets/README.md#revertedtextfield)
* [UpsideDownTextField](weirdgets/README.md#upsidedowntextfield)
* [RadioButton](weirdgets/README.md#radiobutton)
* [ValidationsButton](weirdgets/README.md#validationsbutton)
* [FirstAprilFish](weirdgets/README.md#firstaprilfish)

# Learnings

## Build a custom layout - Diagonal

We all are using common layouts such as Row, Column, Stack. But how can we create our own layout ?

Diagonal show you a way to make it.

[Diagonal source code](weirdgets/lib/diagonal/diagonal.dart)

## Make a widget dynamic and controllable - Multiggle

Custom Widgets can require to be dynamic over the lifetime of your app or maybe you just want to controll a specific caracteristic.

Multiggle provides an example of a Stateful widget with a Controller to... control it. 

[Multiggle source code](weirdgets/lib/multiggle/multiggle.dart)

## Create triangular widget using CustomPaint - Troggle

Most of the widgets are rectangular or close to have a square shape.

Troggle provides you a concrete example to create a custom shape widget.

[Troggle source code](weirdgets/lib/troggle/)

## Use Camera - JaimPaMaggle

Camera package gives you to ablility to use device's cameras. It can be ovious for many people, but if it is not clear for you, just look at the JaimPaMaggle widget to see how to use it.

[JaimPaMaggle source code](weirdgets/lib/jaimpamaggle/jaimpamaggle.dart)

## Rotate & Transform Widget using Matrix4 - RevertedTextField & UpsideDownTextField

Flutter gives the possibility to easily transform a widget rendenring.

We managed to show you how with two brain breaking example:
- RevertedTextField (beware, a glass mirror is required to read it)
- UpsideDownTextField (beware, neck injuries can occur if you try to read it)

[RevertedTextField source code](weirdgets/lib/reverted_textfield/reverted_textfield.dart)
[UpsideDownTextField source code](weirdgets/lib/upsidedown_textfield/upside_down_textfield.dart)

## Play audio flux from the web - RadioButton

Audio streams are part of the web with Podcasts, Radios, Music stream.

How to play it with flutter ?

See the RadioButton source code and audio will never get secrets for you.

[RadioButton source code](weirdgets/lib/radio_button/radio_button.dart)

## Make users gone mad - ValidationsButton (ok this one maybe not)

Miss clicks are a plague. That's why we've created the ValidationsButton. And maybe a little bit for fun...

[ValidationsButton source code](weirdgets/lib/validations_button/validations_button.dart)

# About us

## XPEHO mobile

![mascotte](doc/images/mascotte%20small.jpeg)

XPEHO mobile is the mobile developer team of the XPEHO company. We intend to learn, share, challenge and exchange a lot about mobile developpment.

We try to do it using happyness and funny ways.

The main goal is to enjoy coding, share if with everybody, learn new things, talke about us and our company.

## Web site

[www.xpeho.fr](https://xpeho.fr/)

# 𓆡 April fool 𓆡

This library has been published as an april fool.

The main goal was to provide some joy to everyone who see it.

The second goal was to provide so code example for some specific cases.
