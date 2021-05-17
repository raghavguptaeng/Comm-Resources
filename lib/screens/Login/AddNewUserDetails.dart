import 'package:flutter/material.dart';
class AddNewUserDetails extends StatefulWidget {
  static String id = '/newuserdetails';
  const AddNewUserDetails({Key key}) : super(key: key);

  @override
  _AddNewUserDetailsState createState() => _AddNewUserDetailsState();
}

class _AddNewUserDetailsState extends State<AddNewUserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width * 0.70,
              child: TextField(
                decoration: new InputDecoration(
                  fillColor: Colors.grey,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search for resources',
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width * 0.70,
              child: TextField(
                decoration: new InputDecoration(
                  fillColor: Colors.grey,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search for resources',
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width * 0.70,
              child: TextField(
                decoration: new InputDecoration(
                  fillColor: Colors.grey,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search for resources',
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width * 0.70,
              child: TextField(
                decoration: new InputDecoration(
                  fillColor: Colors.grey,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search for resources',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
