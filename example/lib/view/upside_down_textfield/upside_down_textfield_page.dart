import 'package:flutter/material.dart';
import 'package:weirdgets/mirror_textfield/upside_down_textfield.dart';

class UpsideDownTextfieldPage extends StatelessWidget {
  static const routeName = "/upsideDownTextField";
  const UpsideDownTextfieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UpsideDownTextfield"),
      ),
      body: const Center(
        child: UpsideDownTexfield(),
      ),
    );
  }
}
