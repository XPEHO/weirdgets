import 'package:flutter/material.dart';
import 'package:weirdgets/diagonal/diagonal_direction.dart';
import 'package:weirdgets/diagonal/diagonal_size.dart';

/// Diagonal widget, use to be like a column or a row in a diagonal way
class Diagonal extends StatefulWidget {
  /// Widgets to be displayed in the diagonal
  final List<Widget> children;

  /// Direction of the diagonal
  /// It can be bottomRight, bottomLeft, topRight, topLeft
  final DiagonalDirection direction;

  /// Size of the diagonal
  /// This define if the diagonal will take all the available space or only the needed space
  /// It can be min or max
  final DiagonalSize size;

  const Diagonal({
    required this.children,
    this.direction = DiagonalDirection.bottomRight,
    this.size = DiagonalSize.min,
    Key? key,
  }) : super(key: key);

  @override
  _DiagonalState createState() => _DiagonalState();
}

class _DiagonalState extends State<Diagonal> {
  @override
  Widget build(BuildContext context) {
    return widget.size == DiagonalSize.min
        ? Flexible(
            child: ListView.builder(
              reverse: widget.direction == DiagonalDirection.topLeft ||
                      widget.direction == DiagonalDirection.topRight
                  ? true
                  : false,
              shrinkWrap: true,
              itemCount: widget.children.length,
              itemBuilder: (BuildContext context, int index) {
                return _DiagonalRow(
                  widget.children[index],
                  index,
                  widget.children.length,
                  widget.direction,
                );
              },
            ),
          )
        : Expanded(
            child: ListView.builder(
              reverse: widget.direction == DiagonalDirection.topLeft ||
                      widget.direction == DiagonalDirection.topRight
                  ? true
                  : false,
              shrinkWrap: true,
              itemCount: widget.children.length,
              itemBuilder: (BuildContext context, int index) {
                return _DiagonalRow(
                  widget.children[index],
                  index,
                  widget.children.length,
                  widget.direction,
                );
              },
            ),
          );
  }
}

/// Each row of the diagonal widget
class _DiagonalRow extends StatelessWidget {
  /// The widget to be displayed in this row
  final Widget widget;

  /// Where the widget should be displayed
  final int index;

  /// The length of the diagonal
  final int length;

  /// The direction in wich the widgets of the diagonal should be displayed
  final DiagonalDirection direction;

  const _DiagonalRow(this.widget, this.index, this.length, this.direction);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getRowElements(),
    );
  }

  /// Retrieve every elements of the row
  /// This can be an empty place or the widget to be displayed according to the index and the direction of the diagonal
  List<Widget> getRowElements() {
    List<Widget> elements = [];

    if (direction.value == DiagonalDirection.bottomRight.value ||
        direction.value == DiagonalDirection.topRight.value) {
      for (int elementIndex = 0; elementIndex < length; elementIndex++) {
        if (elementIndex == index) {
          elements.add(_RowElement(widget));
        } else {
          elements.add(Expanded(child: Container()));
        }
      }
    } else {
      for (int elementIndex = length - 1; elementIndex >= 0; elementIndex--) {
        if (elementIndex == index) {
          elements.add(_RowElement(widget));
        } else {
          elements.add(Expanded(child: Container()));
        }
      }
    }

    return elements;
  }
}

/// The widget to be displayed in each row of the diagonal
class _RowElement extends StatelessWidget {
  /// The widget to be displayed
  final Widget widget;

  const _RowElement(this.widget);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: widget,
    );
  }
}
