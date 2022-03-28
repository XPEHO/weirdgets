import 'package:flutter/material.dart';

/// Allows to listen when the position of the multiggle changes.
typedef OnMultigglePositionChanged = Function(int);

/// Allows to programmatically change the position of the multiggle.
typedef OnSetPosition = Function(int);

/// Allows to programmatically pilot the multiggle.
class MultiggleController {
  late OnSetPosition _onSetPosition;

  void setPosition(int position) {
    _onSetPosition(position);
  }
}

/// The Multiggle widget is a widget that allows to choose more than 2 Toggle positions
/// Just specify how much positions you want to have and the initial position.
class Multiggle extends StatefulWidget {
  /// Background color of the multiggle.
  final Color backgroundColor;

  /// Border color of the multiggle.
  final Color borderColor;

  /// Color of the indicator.
  final Color indicatorColor;

  /// Number of positions.
  final int count;

  /// Initial position.
  final int initialPosition;

  /// Called when the position of the multiggle changes.
  final OnMultigglePositionChanged? onPositionChanged;

  /// Controller used to pilot the multiggle (optional)
  final MultiggleController? controller;

  const Multiggle({
    Key? key,
    this.backgroundColor = Colors.grey,
    this.borderColor = Colors.black,
    this.indicatorColor = Colors.black,
    required this.count,
    this.onPositionChanged,
    this.controller,
    this.initialPosition = 0,
  }) : super(key: key);

  @override
  State<Multiggle> createState() => _MultiggleState();
}

/// Stateful representation of the multiggle widget.
class _MultiggleState extends State<Multiggle> {
  int _position = 0;

  /// Builds the stop dots of the multiggle.
  List<Widget> _buildDots() {
    return List.generate(
      widget.count,
      (index) => const _Dot(
        size: 10,
        color: Colors.white,
      ),
    );
  }

  @override
  void initState() {
    _position = widget.initialPosition;
    widget.controller?._onSetPosition = _onSetPosition;
    super.initState();
  }

  /// Called when the position of the multiggle has been changed from outside.
  void _onSetPosition(int position) {
    setState(() {
      _position = position;
    });
    widget.onPositionChanged?.call(position);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _position = (++_position) % widget.count;
          widget.onPositionChanged?.call(_position);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: widget.borderColor,
            width: 4,
          ),
        ),
        child: SizedBox(
          height: 32.0,
          width: (widget.count + 1) * 32.0,
          child: Stack(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _buildDots(),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                left: (_position + 1) * 32.0 - 10,
                top: 6,
                child: _Dot(
                  size: 20,
                  color: widget.indicatorColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Widget representation of a stop dot in the multiggle.
class _Dot extends StatelessWidget {
  final double size;
  final Color color;

  const _Dot({
    Key? key,
    this.size = 10,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
