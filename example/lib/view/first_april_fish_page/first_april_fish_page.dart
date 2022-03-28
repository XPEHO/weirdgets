import 'package:flutter/material.dart';
import 'package:weirdgets/first_april_fish/first_april_fish.dart';

class FirstAprilFishPage extends StatelessWidget {
  static const routeName = "/first_april_fish";

  const FirstAprilFishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstAprilFish"),
      ),
      body: const Center(
        child: FirstAprilFish(
          label: 'FirstAprilFish',
          showCameraSelection: true,
        ),
      ),
    );
  }
}
