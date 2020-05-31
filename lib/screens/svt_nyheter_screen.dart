import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevinflutterapp2/screens/screen_one.dart';

class SvtNyheterScreen extends StatefulWidget {
  @override
  _SvtNyheterScreenState createState() => _SvtNyheterScreenState();
}

class _SvtNyheterScreenState extends State<SvtNyheterScreen> {
  @override
  Widget build(BuildContext context) {

    ListView firstCard = ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.chevron_left, size: 35, color: Colors.grey[800],),
              onPressed: ()
              {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 50,),
            Center(
              child: Text('Svt Nyheter',
                style: TextStyle(
                  fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w600, fontFamily: 'Monteserrat',
                ),),
            ),
            SizedBox(width: 100,),
          ],
        ),
        SizedBox(height: 20,),
        Stack(
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  child: Image(
                    image: AssetImage('images/background.png'),
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Card(
                        elevation: 2,
                        color: Color.fromARGB(215, 114, 137, 218),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text('14m ago',
                              style: TextStyle(
                                fontSize: 10.0, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Monteserrat',
                              ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Image(
                    image: AssetImage('images/img_four.png'),
                    height: 120,
                  ),
                ),
                SizedBox(height: 20,),

                SizedBox(height: 50,),
                Align(
                  alignment: Alignment.center,
                  child: Text('Trump tries to help the \nstock market in 2020  \nwhile people wait for\nan answer.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.normal, fontFamily: 'Monteserrat', height: 1.5,
                    ),),
                ),
                SizedBox(height: 80,),
                Container(
                  height: 40,
                  width: 150,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstScreen()),);
                    },
                    child: Card(
                      elevation: 2,
                      color: Color.fromARGB(215, 114, 137, 218),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(image: AssetImage('images/link.png'),),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      body: firstCard
    );
  }
}
