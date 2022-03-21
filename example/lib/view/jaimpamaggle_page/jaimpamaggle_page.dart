import 'package:flutter/material.dart';
import 'package:weirdgets/jaimpamaggle/jaimpamaggle.dart';

class JaimPaMagglePage extends StatelessWidget {
  static const routeName = "/jaim_pa_maggle";

  const JaimPaMagglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JaimPaMaggle"),
      ),
      body: const Center(
        child: JaimPaMaggle(
          label: 'JaimPaMaggle',
          showCameraSelection: true,
        ),
      ),
    );
  }
}
