import 'package:comm_resources/constants.dart';
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name",style: kHeadFontStyle,),
                Text("Quantity",style: kHeadFontStyle,),
                Text("Accept",style: kHeadFontStyle,),
                Text("Decline",style: kHeadFontStyle,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
