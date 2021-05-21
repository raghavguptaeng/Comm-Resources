import 'package:flutter/material.dart';
class MyResources extends StatefulWidget {
  static String id = '/my resources';
  const MyResources({Key key}) : super(key: key);

  @override
  _MyResourcesState createState() => _MyResourcesState();
}

class _MyResourcesState extends State<MyResources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Requests"),),
    );
  }
}
