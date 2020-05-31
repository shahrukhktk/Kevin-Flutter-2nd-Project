import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevinflutterapp2/screens/aftonbladet_screen.dart';
import 'package:kevinflutterapp2/screens/expressen_screen.dart';
import 'package:kevinflutterapp2/screens/svenskadagbladet_screen.dart';
import 'package:kevinflutterapp2/screens/svt_nyheter_screen.dart';

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
                        MaterialPageRoute(builder: (context) => AftonbladetScreen()),);
                    },
                    child: Image(
                      image: AssetImage('images/gridone.png',),
                      height: 160,
                    ),
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExpressenScreen()),);
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
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SvenskaDagbladetScreen()),);
                    },
                    child: Image(
                      image: AssetImage('images/gridthree.png',),
                      height: 160,
                    ),
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SvtNyheterScreen()),);
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
