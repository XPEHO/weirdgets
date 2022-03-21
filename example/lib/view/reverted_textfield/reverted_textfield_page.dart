import 'package:flutter/material.dart';
import 'package:weirdgets/reverted_textfield/reverted_textfield.dart';

class RevertedTextfieldPage extends StatelessWidget {
  static const routeName = "/revertedTextField";
  const RevertedTextfieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RevertedTextfield"),
      ),
      body: const Center(
        child: RevertedTexfield(),
      ),
    );
  }
}
