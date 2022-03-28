import 'package:flutter/material.dart';

/// UpsideDownTexfield widget, a text field with a vertical rotation
class UpsideDownTexfield extends StatefulWidget {
  const UpsideDownTexfield({Key? key}) : super(key: key);

  @override
  State<UpsideDownTexfield> createState() => _UpsideDownTexfieldState();
}

class _UpsideDownTexfieldState extends State<UpsideDownTexfield> {
  /// The offset defining the rotation applied to the text field
  final Offset _verticalOffset = const Offset(0, 3);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..rotateX(_verticalOffset.dy)
        ..rotateY(_verticalOffset.dx),
      alignment: FractionalOffset.center,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(),
      ),
    );
  }
}
