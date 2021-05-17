import 'package:comm_resources/constants.dart';
import 'package:comm_resources/screens/Login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
          onTap: (){
            FirebaseAuth.instance.signOut();
            Navigator.pushReplacementNamed(context, Login.id);
          },
          child: Text('Logout',style: kHeadFontStyle.copyWith(color: Colors.black),)),
    );
  }
}
