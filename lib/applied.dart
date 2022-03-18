
import 'package:flutter/material.dart';
import 'package:studentfin/Scholarship/scholarshipList.dart';
import 'package:studentfin/home.dart';

import 'Education Loan/loanList.dart';
import 'Sponsorship/sponsorshipList.dart';


class Applied extends StatefulWidget {

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<Applied>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Applied Successfully ",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          shadows:[Shadow(color:Colors.black54, offset:Offset(1,2), blurRadius: 4 ) ]
                      )
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Image(
                    image: AssetImage("assets/done.jpg"),
                    height: 300,
                    width: 300,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonTheme(
                    minWidth: 300.0,
                    child: RaisedButton(
                      elevation: 4,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 38),
                      color: Colors.teal,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Explore More",
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            },
                          ),
                        );

                      },
                    ),
                  ),
                  //logut
                  // RaisedButton(
                  //   elevation: 4,
                  //   padding: EdgeInsets.symmetric(
                  //       vertical: 16, horizontal: 38),
                  //   color: Colors.teal,
                  //   textColor: Colors.white,
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: const Text(
                  //     "Logout",
                  //     style: TextStyle(fontSize: 18),
                  //   ),
                  //   onPressed: () async {
                  //     signOutGoogle();
                  //     Navigator.of(context).pushAndRemoveUntil(
                  //         MaterialPageRoute(builder: (context) {
                  //           return LoginPage();
                  //         }), ModalRoute.withName('/'));
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
