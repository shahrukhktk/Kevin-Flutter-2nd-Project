import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevinflutterapp2/screens/screen_two.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Svenska nyheter',
                    style: TextStyle(
                      fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.w600, fontFamily: 'Monteserrat',
                    ),
                  ),
                  Image(image: AssetImage('images/flag.png',), height: 20,),
                ],
              ),
            ),
            SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),);
                    },
                    child: Image(
                      image: AssetImage('images/gridone.png',),
                      height: 160,
                    ),
                  ),
                  GestureDetector(
                    onTap: ()
                    {

                    },
                    child: Image(
                      image: AssetImage('images/gridtwo.png',),
                      height: 160,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: ()
                    {

                    },
                    child: Image(
                      image: AssetImage('images/gridthree.png',),
                      height: 160,
                    ),
                  ),
                  GestureDetector(
                    onTap: ()
                    {

                    },
                    child: Image(
                      image: AssetImage('images/gridfour.png',),
                      height: 160,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
//      ListView(
//        padding: EdgeInsets.all(10.0),
//        children: <Widget>[
//          SizedBox(height: 20,),
//          Container(
//            height: 100,
//            padding: EdgeInsets.all(10),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                Text('Svenska nyheter',
//                  style: TextStyle(
//                    fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.w600, fontFamily: 'Monteserrat',
//                  ),
//                ),
//                Image(image: AssetImage('images/flag.png',), height: 20,),
//              ],
//            ),
//          ),
//          SizedBox(height: 10,),
//
//          Container(
//            child: Image(
//              image: AssetImage('image/gridone.png'),
//            ),
//          ),
//        ],
//      ),
    );
  }
}
