import 'package:comm_resources/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var resoures = {
    'medicine':[
      {
        'name':'Paracetamol',
        'quantity':60,
        'average price':5.55
      },
      {
        'name':'Remdivisor',
        'quantity':900,
        'average price':69.420
      },
      {
        'name':'Dolo',
        'quantity':69,
        'average price':955.42
      }
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Greeting(),
            SizedBox(height: 25,),
            seachArea(context),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.40,
              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: resoures['medicine'].length,
                  itemBuilder: (BuildContext context,int index){
                    return Container(
                      margin: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width*0.50,
                      decoration: BoxDecoration(
                          color: Colors.blue
                      ),
                      child: Text(resoures['medicine'][index]['name']),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

  Row seachArea(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(15)
                ),
                width: MediaQuery.of(context).size.width*0.70,
                child: TextField(
                  decoration: new InputDecoration(
                    fillColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Search for resources',
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color:Color(0xFF2E8CFF),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(FontAwesomeIcons.search),
                ),
              )
            ],
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

/*
Container(
              child:
            ),
 */