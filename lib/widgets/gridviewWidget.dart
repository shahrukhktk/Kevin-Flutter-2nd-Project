import 'package:flutter/material.dart';

class gridview_Widget extends StatefulWidget {
  @override
  _gridview_WidgetState createState() => _gridview_WidgetState();
}

class _gridview_WidgetState extends State<gridview_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(4, (index){
        return new Card(
          elevation: 2,
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                    child: Image(image: AssetImage('images/gridone.png'),)
                ),
              ],
            ),
          ),
        );
      })
      ),
    );
  }
}
