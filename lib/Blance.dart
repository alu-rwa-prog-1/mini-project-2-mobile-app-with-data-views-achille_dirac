// import 'package:awesome_contact_app/home_view.dart';
// import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balance ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Account(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Your Balance",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(color: Colors.white),
    );
  }

}



class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.0,
      child: Drawer(),
    );
  }
}


Card topArea() => Card(
  margin: EdgeInsets.all(10.0),
  elevation: 1.0,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0))),
  child: Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xFF015FFF), Color(0xFF015FFF)])),
      padding: EdgeInsets.all(5.0),
      // color: Color(0xFF015FFF),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Text("",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(r"$ " "95,940.00",
                  style: TextStyle(color: Colors.white, fontSize: 24.0)),
            ),
          ),
          SizedBox(height: 35.0),
        ],
      )),
);



