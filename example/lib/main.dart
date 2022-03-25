import 'package:example/view/diagonal_page/diagonal_page.dart';
import 'package:example/view/jaimpamaggle_page/jaimpamaggle_page.dart';
import 'package:example/view/multiggle_page/multiggle_page.dart';
import 'package:example/view/radio_button_page/radio_button_page.dart';
import 'package:example/view/reverted_textfield/reverted_textfield_page.dart';
import 'package:example/view/upside_down_textfield/upside_down_textfield_page.dart';
import 'package:example/view/troggle_page/troggle_page.dart';
import 'package:example/view/validations_button/validations_button_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        DiagonalPage.routeName: (context) => const DiagonalPage(),
        MultigglePage.routeName: (context) => const MultigglePage(),
        RevertedTextfieldPage.routeName: (context) =>
            const RevertedTextfieldPage(),
        UpsideDownTextfieldPage.routeName: (context) =>
            const UpsideDownTextfieldPage(),
        TrogglePage.routeName: (context) => const TrogglePage(),
        JaimPaMagglePage.routeName: (context) => const JaimPaMagglePage(),
        RadioButtonPage.routeName: (context) => const RadioButtonPage(),
        ValidationsButtonPage.routeName: (context) =>
            const ValidationsButtonPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weirdgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Choose a weirdget',
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () => Navigator.of(context).pushNamed("/diagonal"),
              child: const Text(
                "Diagonal",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () => Navigator.of(context).pushNamed("/multiggle"),
              child: const Text(
                "Multiggle",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () => Navigator.of(context).pushNamed("/troggle"),
              child: const Text(
                "Troggle",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed("/jaim_pa_maggle"),
              child: const Text(
                "JaimPaMaggle",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed("/revertedTextField"),
              child: const Text(
                "Reverted textfield",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed("/upsideDownTextField"),
              child: const Text(
                "Upside down textfield",
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () => Navigator.of(context).pushNamed("/radioButton"),
              child: const Text(
                "Radio button",
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: Colors.grey,
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed("/validationsButton"),
              child: const Text(
                "Validations button",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
