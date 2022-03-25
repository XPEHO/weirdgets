import 'package:flutter/material.dart';

/// ValidationsButton widget, a button that allow you to be really sure that you want to go further
class ValidationsButton extends StatefulWidget {
  /// The messages to be displayed on the button each time the button is pressed
  final List<String> validationMessages;

  /// The method to be called when the validation is reached
  final Function onValidation;

  /// The style of the button
  final ButtonStyle? style;

  const ValidationsButton(
      {required this.validationMessages,
      required this.onValidation,
      this.style,
      Key? key})
      : super(key: key);

  @override
  State<ValidationsButton> createState() => _ValidationsButtonState();
}

class _ValidationsButtonState extends State<ValidationsButton> {
  /// The index of the messages list
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    /// The current message displayed on the button
    String _currentMessage = widget.validationMessages[_index];

    return ElevatedButton(
      style: widget.style,
      onPressed: () {
        if (_index == widget.validationMessages.length - 1) {
          widget.onValidation();
        } else {
          setState(() {
            _index++;
          });
        }
      },
      child: Text(
        _currentMessage,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
