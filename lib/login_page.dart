import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'auth.dart';
import 'form.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004D40),
      // rgb(37, 150, 190)
      body: Container(
        color: Color(0xFF004D40),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage("assets/logo2.png"),
                height: 350,
              ),
              GoogleAuthButton(
                onPressed: () {
                  signInWithGoogle().whenComplete(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return UserInfoScreen();
                        },
                      ),
                    );
                  });
                },
                darkMode: false,
                style: AuthButtonStyle(
                  iconType: AuthIconType.outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}