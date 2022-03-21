import 'package:flutter/material.dart';
import 'package:weirdgets/troggle/troggle.dart';

class TrogglePage extends StatefulWidget {
  static const routeName = "/troggle";

  const TrogglePage({Key? key}) : super(key: key);

  @override
  _TrogglePageState createState() => _TrogglePageState();
}

class _TrogglePageState extends State<TrogglePage> {
  TrogglePosition _position = TrogglePosition.no;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Troggle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Troggle(
              width: 128,
              height: 128,
              quarterTurns: 0,
              onPositionChanged: _onPositionChanged,
            ),
            const SizedBox(
              height: 12,
            ),
            Text('Current position: ${_position.name}'),
          ],
        ),
      ),
    );
  }

  void _onPositionChanged(TrogglePosition position) {
    setState(() {
      _position = position;
    });
  }
}
