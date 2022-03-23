import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

/// The radio button is a widget that allow the user to listen a radio by pressing a button.
/// You can specify the radio you want to listen with the corresponding url.
class RadioButton extends StatefulWidget {
  /// The map of radio-url you want to listen to.
  /// exemple : { "NRJ France": "http://scdn.nrjaudio.fm/adwz2/fr/30001/mp3_128.mp3?origine=fluxradios" }.
  /// You can find some radios urls on this site : http://fluxradios.blogspot.com.
  final Map<String, String> radios;

  const RadioButton({required this.radios, Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  /// The player that will play the radio using the url.
  AudioPlayer audioPlayer = AudioPlayer();

  /// The url of the radio to be listen.
  String? _url;

  @override
  Widget build(BuildContext context) {
    _url ??= widget.radios.values.first;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.radios.keys.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(widget.radios.keys.elementAt(index)),
          leading: Radio(
            value: widget.radios.keys.elementAt(index),
            groupValue: _url,
            onChanged: (String? url) {
              setState(() {
                _url = url;
              });
              audioPlayer.play(widget.radios.values.elementAt(index),
                  isLocal: false);
            },
          ),
        );
      },
    );
  }
}
