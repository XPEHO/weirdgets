import 'package:flutter/material.dart';
import 'package:weirdgets/radio_button/radio_button.dart';

class RadioButtonPage extends StatelessWidget {
  static const routeName = "/radioButton";
  const RadioButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RadioButton"),
      ),
      body: const Center(
        child: RadioButton(
          radios: {
            "Dogmazic": "https://radio.dogmazic.net:8000/stream.ogg",
            "Radio RSR": "http://listen.radioking.com/radio/411/stream/1670",
            "Libre @ Toi": "http://vdl.stream-lat.org:8000/voixdulat_ogg",
          },
        ),
      ),
    );
  }
}
