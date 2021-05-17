import 'package:comm_resources/screens/Login/AddNewUserDetails.dart';
import 'package:comm_resources/screens/MainScreen.dart';
import 'package:comm_resources/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Init());
}
class Init extends StatelessWidget {
  const Init({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MainScreen.id:(context)=>MainScreen(),
        AddNewUserDetails.id:(context)=>AddNewUserDetails()
      },
      home: Login(),
    );
  }
}
