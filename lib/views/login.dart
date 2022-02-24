import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:smart_wallet/views/home.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, //Center Row contents horizontally,
        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
        children: [
          const SizedBox(
            width: 250.0,
            height: 150.0,
            child: Image(image: AssetImage('images/smart_wallet_logo.png')),
          ),
          const Text(
            "Login",
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
          SizedBox( height: 5.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoSwitch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
              Text(
                "Forgot Password?"
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Scaffold(
                          body: HomePage() ,
                          appBar: AppBar(
                            backgroundColor: Colors.white,
                            centerTitle: true,
                            leading: const Text(''),
                            title: const Text('Home',
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w500,
                               letterSpacing: 2.0,
                             ),),
                          ),
                        bottomNavigationBar: BottomNavigationBar(
                          items: const [
                            BottomNavigationBarItem(
                                icon: Icon(Icons.home),
                                label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.grid_view_rounded),
                              label: 'Menu',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.compare_arrows_outlined),
                              label: 'History',
                            ),
                          ],
                        ),
                      )
                  )
              );
            },
            child: Text('LOGIN'),
            style: TextButton.styleFrom(
              padding: EdgeInsets.fromLTRB(60.0, 15, 60, 15),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
            ),
          ),
          SizedBox(width: 20.0, height: 20.0,),
          Column(
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
            children: [
              Text("OR"), Text("Login with")
            ]
          ),
          SizedBox(width: 20.0, height: 20.0,),
          SignInButtonBuilder(
            text: 'Sign in with Email',
            icon: Icons.email,
            onPressed: () {},
            backgroundColor: Colors.blue[700]!,
          ),
          SizedBox( height: 20.0,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: [ Text("Don't have an account? "), TextButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Scaffold( body: SignUpPage()))
                );
              }, child: Text("Register now"))]
          )
        ],
      ),
    );
  }
}