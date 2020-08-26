import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trading/Screens/home.dart';

void main() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.teal, // navigation bar color
      statusBarColor: Colors.blueGrey.shade900, // status bar color
    ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
