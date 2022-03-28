import 'package:flutter/material.dart';
import 'package:weirdgets/validations_button/validations_button.dart';

class ValidationsButtonPage extends StatefulWidget {
  static const routeName = "/validationsButton";
  const ValidationsButtonPage({Key? key}) : super(key: key);

  @override
  State<ValidationsButtonPage> createState() => _ValidationsButtonPageState();
}

class _ValidationsButtonPageState extends State<ValidationsButtonPage> {
  bool _shouldDisplayValidationMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ValidationsButton"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValidationsButton(
              validationMessages: const [
                "Confirm",
                "Are you sure ?",
                "You should think about it again",
                "Last chance !",
              ],
              onValidation: () => setState(() {
                _shouldDisplayValidationMessage = true;
              }),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.grey.shade500,
                ),
              ),
            ),
            Visibility(
              visible: _shouldDisplayValidationMessage,
              child: const Text(
                "Well done, you validated !",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
