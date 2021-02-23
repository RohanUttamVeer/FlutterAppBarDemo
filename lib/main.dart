import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "AppBar",
    home: Scaffold(
      appBar: AppBar(
        //1
        title: Text("AppBar Demo"), //App bar heading title
        //2
        centerTitle: true,//heading centered
        //3
        backgroundColor: Color(0xFF85C675),
        //4
        elevation: 4, // shadow under appbar
        // leading: IconButton( // icons o the right of appbar
        //   icon: Icon(Icons.settings),
        //5
        actions: <Widget>[
          IconButton( //icons on the left of appbar
            icon: Icon(Icons.add_circle_outline),
            onPressed: () => debugPrint("Rohan"),
          ),
          IconButton(
            icon: Icon(Icons.wb_cloudy),
            onPressed: () => debugPrint("Veer"),
          )
        ],
      ),
      //6
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('List'),
              decoration: BoxDecoration(
                color: Color(0xFF85C675),
              ),
            ),
            ListTile(
              title: Text("Member"),
              onTap: () => debugPrint("Pressed drawer"),
            ),
            ListTile(
              title: Text('yo'),
              onLongPress: () => debugPrint("yo pressed"),
            )
          ],
        ),
      ),
    ),
  ));
}
