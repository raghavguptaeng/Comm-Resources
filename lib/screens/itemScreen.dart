import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:comm_resources/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatefulWidget {
  const Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  final firestore = FirebaseFirestore.instance;
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Greeting(),
              SizedBox(
                height: 25,
              ),
              seachArea(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.60,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("Medicines").snapshots(),
                  builder: (context,snapshot){
                    if(snapshot.data == null){
                      return Text("No Data Present");
                    }
                    else return ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        var data = snapshot.data.docs[index];
                        return ItemCard(context,index ,data['name'] ,data['qty'].toString() ,data['avgPrice']);
                      },
                    );
                    },
                ),
              ),
            ],
          ),
        );
  }
  }

  // Following method constructs the cards that shows available items
  Container ItemCard(BuildContext context,int index,String name,String qty,String price) {

    return Container(
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
                'assets/bottle${(index > 4 || index % 4 == 0) ? index % 4 + 1 : index + 1}.png'),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(2),
              child: Text(
                name,
                style: kHeadFontStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'In Stock: ' + qty,
              style: kSubTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  price+
                      ' \$',
                  style: kSubTextStyle,
                ),
                GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   if (resoures['medicine'][index]['inCart'] != 0)
                    //     resoures['medicine'][index]['inCart'] = 0;
                    //   else
                    //     resoures['medicine'][index]['inCart'] = 1;
                    // });
                  },
                  child: Container(
                    child:Icon(FontAwesomeIcons.heart),
                    decoration: kAddStyle,
                    padding: EdgeInsets.all(10),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          )
        ],
      ),
    );
  }

  // Following Methods construct the top search bar present
  Row seachArea(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        SizedBox(
          width: 15,
        ),
        GestureDetector(
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Color(0xFF2E8CFF),
                borderRadius: BorderRadius.circular(15)),
            child: Icon(FontAwesomeIcons.search),
          ),
        )
      ],
    );
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
