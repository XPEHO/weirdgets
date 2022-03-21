import 'package:flutter/material.dart';
import 'package:weirdgets/multiggle/multiggle.dart';

class MultigglePage extends StatefulWidget {
  static const routeName = "/multiggle";

  const MultigglePage({Key? key}) : super(key: key);

  @override
  _MultigglePageState createState() => _MultigglePageState();
}

class _MultigglePageState extends State<MultigglePage> {
  int _count = 2;
  int _position = 0;
  final MultiggleController _multiggleController = MultiggleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiggle"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _decreaseCountState,
                icon: const Icon(Icons.remove),
                label: const Text('Decrease'),
              ),
              Text('$_count dots'),
              ElevatedButton.icon(
                onPressed: _increaseCountState,
                icon: const Icon(Icons.add),
                label: const Text('Increase'),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Multiggle(
            controller: _multiggleController,
            count: _count,
            initialPosition: _position,
            onPositionChanged: _setPositionState,
            backgroundColor: Colors.greenAccent,
            borderColor: Colors.white,
            indicatorColor: Colors.green,
          ),
          const SizedBox(
            height: 12,
          ),
          Text('Current position is $_position'),
        ],
      ),
    );
  }

  void _decreaseCountState() {
    setState(_decreaseCount);
  }

  void _decreaseCount() {
    if (_count > 1) {
      _count--;
      _position = 0;
      _multiggleController.setPosition(0);
    }
  }

  void _increaseCountState() {
    setState(_increaseCount);
  }

  void _increaseCount() {
    _count = _count + 1;
  }

  void _setPositionState(int position) {
    setState(() {
      _position = position;
    });
  }
}
