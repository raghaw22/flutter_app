import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/login.dart';

//void main() => runApp(MyApp());


void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      theme: ThemeData(
          primaryColor: Color(0xff095d89),
          accentColor: Color(0xff095d89)
      ),
      //home: HomeScreen(),
      home: LoginPage(),

    );

  }
}




