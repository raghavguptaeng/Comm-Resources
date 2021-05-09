import 'package:comm_resources/constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Greeting(),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.70,
                  child: TextField(
                    decoration: new InputDecoration(
                      fillColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Search for medicine',
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Greeting extends StatelessWidget {
  const Greeting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning,",
            style: kHeadFontStyle,
          ),
          Text(
            "Raghav",
            style: kHeadFontStyle,
          )
        ],
      ),
    );
  }
}
