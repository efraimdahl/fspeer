import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Map<int, Color> color = {
  50: Color.fromRGBO(248, 0, 148, .1),
  100: Color.fromRGBO(248, 0, 148, .2),
  200: Color.fromRGBO(248, 0, 148, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(248, 0, 148, .5),
  500: Color.fromRGBO(248, 0, 148, .6),
  600: Color.fromRGBO(248, 0, 148, .7),
  700: Color.fromRGBO(248, 0, 148, .8),
  800: Color.fromRGBO(248, 0, 148, .9),
  900: Color.fromRGBO(1248, 0, 148, 1),
};

const MaterialColor customColor = MaterialColor(0xFFF80080, color);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fspeer',
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
        primarySwatch: customColor,
      ),
      home: const MyHomePage(title: 'fspeer'),
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
  int _counter = 0;

  void startClock() {}

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 25, fontFamily: 'Gruppo'),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(200, 200),
            shape: const CircleBorder(),
          ),
          child: const Text(
            'Check In',
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Gruppo',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
