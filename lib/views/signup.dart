import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:smart_wallet/views/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, //Center Row contents horizontally,
        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
        children: [
          const SizedBox(
            width: 150.0,
            height: 100.0,
            child: Expanded(child: Image(image: AssetImage('images/smart_wallet_logo.png'))),
          ),
          const Text(
            "Sign Up",
            style:
            TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 40.0,),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.blueAccent,
              ),
              border: OutlineInputBorder(),
              hintText: 'first name',
            ),
          ),
          SizedBox(width: 20.0, height: 20.0,),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.blueAccent,
              ),
              border: OutlineInputBorder(),
              hintText: 'last name',
            ),
          ),
          SizedBox(width: 20.0, height: 20.0,),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.blueAccent,
              ),
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
          SizedBox(width: 20.0, height: 20.0,),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blue
              ),
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
          SizedBox(width: 20.0, height: 20.0,),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blue
              ),
              border: OutlineInputBorder(),
              hintText: 'Confirm Password',
            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed: () {
              // Respond to button press
            },
            child: Text('SIGN UP'),
            style: TextButton.styleFrom(
              padding: EdgeInsets.fromLTRB(60.0, 15, 60, 15),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: [ Text("Do you already have an account? "), TextButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Scaffold( body: LoginPage()))
                );
              }, child: Text("Login here"))]
          )
        ],
      ),
    );
  }
}