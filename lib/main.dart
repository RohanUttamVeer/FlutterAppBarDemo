import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //SystemChrome.setEnabledSystemUIOverlays([]); //hide status/notification bar for all screens
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // debug banner removed
    title: "AppBar",
    home: Scaffold(
      appBar: AppBar(
        //1
        title: Text("AppBar Demo"),
        //App bar heading title
        automaticallyImplyLeading: true,
        // to disable/enable the leading widget
        //2
        centerTitle: true,
        //heading centered
        primary: true,
        //appbar displayed at the top of the screen.
        //3
        backgroundColor: Color(0xFF85C675),
        brightness: Brightness.light,
        //brightness of appBar to Light/Dark
        //4
        elevation: 10,
        // shadow under appbar
        shadowColor: Colors.red,
        // elevation shadow color changed
        shape: RoundedRectangleBorder(
            //shapes your appbar
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(55),
          bottomRight: Radius.circular(0),
        )),
        iconTheme: IconThemeData(opacity: 0.6),
        // icons faded
        bottom: PreferredSize(
          //size added in the bottom of the app bar
          preferredSize: Size.fromHeight(40),
          child: Text("This is a bottom Text"),
        ),
        // leading: IconButton( // icons on the left of appbar
        //     icon: Icon(Icons.settings)),
        //5
        actionsIconTheme: IconThemeData(color: Colors.red),
        //theme for action buttons
        //6
        actions: <Widget>[
          //action buttons on appbar on the right
          IconButton(
            iconSize: 40, //icons on the left of appbar
            icon: Icon(Icons.add_circle_outline),
            onPressed: () => debugPrint("Rohan"),
          ),
          IconButton(
            icon: Icon(Icons.wb_cloudy),
            onPressed: () => debugPrint("Veer"),
          ),
        ],
      ),
      //7
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
// hide status bar for single screen
//   @override
//   void initState() {
//     SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     SystemChrome.setEnabledSystemUIOverlays(
//         [SystemUiOverlay.top, SystemUiOverlay.bottom]);
//     super.dispose();
//   }
}
