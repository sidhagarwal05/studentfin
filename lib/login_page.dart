import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'auth.dart';
import 'form.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(37, 150, 190, 1),
      // rgb(37, 150, 190)
      body: Container(
        color: Colors.indigoAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage("assets/logo.png"),
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 25),
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