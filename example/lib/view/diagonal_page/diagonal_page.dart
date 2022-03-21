import 'package:flutter/material.dart';
import 'package:weirdgets/diagonal/diagonal.dart';
import 'package:weirdgets/diagonal/diagonal_direction.dart';

class DiagonalPage extends StatefulWidget {
  static const routeName = "/diagonal";

  const DiagonalPage({Key? key}) : super(key: key);

  @override
  _DiagonalPageState createState() => _DiagonalPageState();
}

class _DiagonalPageState extends State<DiagonalPage> {
  String selectedValue = "text";
  String selectedDirectionValue = "bottom right";
  DiagonalDirection direction = DiagonalDirection.bottomRight;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("text"), value: "text"),
      const DropdownMenuItem(child: Text("number"), value: "number"),
      const DropdownMenuItem(child: Text("icons"), value: "icons"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownDirectionItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          child: Text("bottom right"), value: "bottom right"),
      const DropdownMenuItem(child: Text("bottom left"), value: "bottom left"),
      const DropdownMenuItem(child: Text("top right"), value: "top right"),
      const DropdownMenuItem(child: Text("top left"), value: "top left"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diagonal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DropdownButton(
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              value: selectedValue,
              items: dropdownItems,
            ),
            DropdownButton(
              onChanged: (String? newValue) {
                setState(() {
                  selectedDirectionValue = newValue!;
                  if (selectedDirectionValue == "bottom right") {
                    direction = DiagonalDirection.bottomRight;
                  } else if (selectedDirectionValue == "bottom left") {
                    direction = DiagonalDirection.bottomLeft;
                  } else if (selectedDirectionValue == "top right") {
                    direction = DiagonalDirection.topRight;
                  } else {
                    direction = DiagonalDirection.topLeft;
                  }
                });
              },
              value: selectedDirectionValue,
              items: dropdownDirectionItems,
            ),
            Visibility(
              visible: selectedValue == "text",
              child: Diagonal(
                children: textList,
                direction: direction,
              ),
            ),
            Visibility(
              visible: selectedValue == "number",
              child: Diagonal(
                children: numberList,
                direction: direction,
              ),
            ),
            Visibility(
              visible: selectedValue == "icons",
              child: Diagonal(
                children: iconsList,
                direction: direction,
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> numberList = [
    const Center(child: Text("1")),
    const Center(child: Text("2")),
    const Center(child: Text("3")),
    const Center(child: Text("4")),
    const Center(child: Text("5")),
    const Center(child: Text("6")),
    const Center(child: Text("7")),
    const Center(child: Text("8")),
    const Center(child: Text("9")),
    const Center(child: Text("11")),
    const Center(child: Text("12")),
    const Center(child: Text("13")),
    const Center(child: Text("14")),
    const Center(child: Text("15")),
    const Center(child: Text("16")),
    const Center(child: Text("17")),
    const Center(child: Text("18")),
    const Center(child: Text("19")),
    const Center(child: Text("20")),
    const Center(child: Text("21")),
    const Center(child: Text("22")),
    const Center(child: Text("23")),
    const Center(child: Text("24")),
    const Center(child: Text("25")),
    const Center(child: Text("26")),
    const Center(child: Text("27")),
    const Center(child: Text("28")),
    const Center(child: Text("29")),
    const Center(child: Text("30")),
    const Center(child: Text("31")),
    const Center(child: Text("32")),
    const Center(child: Text("33")),
    const Center(child: Text("34")),
    const Center(child: Text("35")),
    const Center(child: Text("36")),
    const Center(child: Text("37")),
    const Center(child: Text("38")),
    const Center(child: Text("39")),
    const Center(child: Text("40")),
  ];

  List<Widget> textList = [
    const Center(child: Text("This")),
    const Center(child: Text("is")),
    const Center(child: Text("a")),
    const Center(child: Text("diagonal")),
    const Center(child: Text("list")),
  ];

  List<Widget> iconsList = [
    const Center(child: Icon(Icons.access_alarm)),
    const Center(child: Icon(Icons.pending)),
    const Center(child: Icon(Icons.arrow_back)),
    const Center(child: Icon(Icons.hourglass_bottom)),
    const Center(child: Icon(Icons.house)),
  ];
}
