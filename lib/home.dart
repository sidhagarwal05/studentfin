
import 'package:flutter/material.dart';
import 'package:studentfin/Scholarship/scholarshipList.dart';

import 'Education Loan/loanList.dart';
import 'Sponsorship/sponsorshipList.dart';


class Home extends StatefulWidget {
  static const routeName = '/user-info';

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<Home>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xFF004D40),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Image(
                    image: AssetImage("assets/logo2.png"),
                    height: 300,
                  ),
              ButtonTheme(
                minWidth: 300.0,
                  child: RaisedButton(
                    elevation: 5,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 38),
                    color: Colors.teal,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "Education Loan",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return LoanList();
                          },
                        ),
                      );

                    },
                  ),
            ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonTheme(
                    minWidth: 300.0,
                    child: RaisedButton(
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 38),
                      color: Colors.teal,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Scholarship",
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ScholarshipList();
                            },
                          ),
                        );

                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonTheme(
                    minWidth: 300.0,
                    child: RaisedButton(
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 38),
                      color: Colors.teal,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Sponsorship",
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SponsorshipList();
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
