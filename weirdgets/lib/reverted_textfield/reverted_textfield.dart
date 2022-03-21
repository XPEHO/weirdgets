import 'package:flutter/material.dart';

/// RevertedTexfield widget, a text field with a horizontal rotation
class RevertedTexfield extends StatefulWidget {
  const RevertedTexfield({Key? key}) : super(key: key);

  @override
  State<RevertedTexfield> createState() => _RevertedTexfieldState();
}

class _RevertedTexfieldState extends State<RevertedTexfield> {
  /// The offset defining the rotation applied to the text field
  final Offset _horizontalOffset = const Offset(3, 0);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..rotateX(_horizontalOffset.dy)
        ..rotateY(_horizontalOffset.dx),
      alignment: FractionalOffset.center,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(),
      ),
    );
  }
}
