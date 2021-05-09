import 'package:flutter/material.dart';

import 'screens/MainScreen.dart';

void main() {
  runApp(Init());
}
class Init extends StatelessWidget {
  const Init({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
