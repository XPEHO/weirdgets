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
          {
            "NRJ":
                "http://scdn.nrjaudio.fm/adwz2/fr/30001/mp3_128.mp3?origine=fluxradios",
            "Virgin": "https://ais-live.cloud-services.paris:8443/virgin.mp3",
            "Funradio":
                "http://icecast.funradio.fr/fun-1-44-128?listen=webCwsBCggNCQgLDQUGBAcGBg"
          },
        ),
      ),
    );
  }
}
