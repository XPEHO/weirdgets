import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  final Map<String, String> radios;

  const RadioButton(this.radios, {Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  AudioPlayer audioPlayer = AudioPlayer();
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
