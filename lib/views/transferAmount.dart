import 'package:flutter/material.dart';

class TransferAmount extends StatefulWidget {
  const TransferAmount({Key? key}) : super(key: key);

  @override
  _TransferAmount createState() => _TransferAmount();
}

class _TransferAmount extends State<TransferAmount> {
  TextEditingController myinput = TextEditingController();
  @override
  void initState() {
    myinput.text = ""; //innitail value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Send money", style: TextStyle(color: Colors.black)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: TextField(
              controller: myinput,
              keyboardType: TextInputType.phone,
            ),
          ),
        )
    );
  }