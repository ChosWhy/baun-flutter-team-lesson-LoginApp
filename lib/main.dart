import 'package:example/main_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  final String _title = "Takvim";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple,
          textTheme: TextTheme(
              headline4: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ))),
      title: _title,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
