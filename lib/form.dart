
import 'dart:ui';

import 'package:flutter/material.dart';

import 'auth.dart';
import 'home.dart';
import 'login_page.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class UserInfoScreen extends StatefulWidget {
  static const routeName = '/user-info';

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _incomeController = new TextEditingController();
  TextEditingController _instituteController = new TextEditingController();
  bool _init = true;
  var uid;
  String _selectedDate = '';
  String initValue="Select your Birth Date";
  bool isDateSelected= false;
  late DateTime birthDate; // instance of DateTime
  late String birthDateInString;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  // PersistentBottomSheetController _controller;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                    key: _formkey,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Enter the details: ",
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  shadows:[Shadow(color:Colors.black54, offset:Offset(1,2), blurRadius: 4 ) ]
                              )
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              autocorrect: false,
                              controller: _nameController,
                              maxLines: 1,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 1) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.person,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  labelText: 'Name',
                                  hintText: "Enter your name",
                                  labelStyle: TextStyle(
                                      decorationStyle:
                                      TextDecorationStyle.solid)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              autocorrect: false,
                              controller: _phoneController,
                              maxLines: 1,
                              validator: (value) {
                                if (value!.isEmpty ||
                                    value.length < 1 &&
                                        value.length > 10 ||
                                    int.parse(value) < 5555555555) {
                                  return 'Please enter a valid phone number';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.phone,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  labelText: 'Phone',
                                  hintText: "Enter your phone number",
                                  labelStyle: TextStyle(
                                      decorationStyle:
                                      TextDecorationStyle.solid)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              controller: _emailController,
                              maxLines: 1,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a email Id';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.email,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  labelText: 'Email',
                                  hintText: "Enter your Email Id",
                                  labelStyle: TextStyle(
                                      decorationStyle:
                                      TextDecorationStyle.solid)),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(20)),
                        child:Row(
                            children: [

                              GestureDetector(
                                  child: const Icon(Icons.calendar_today_rounded,
                                  size:40,
                                  color: Colors.black,),
                                  onTap: () async {
                                    final datePick= await showDatePicker(
                                        context: context,
                                        initialDate: new DateTime.now(),
                                        firstDate: new DateTime(1900),
                                        lastDate: new DateTime(2100)
                                    );
                                      setState(() {
                                        birthDate=datePick!;
                                        isDateSelected=true;
                                        birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                                      });

                                  }
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(isDateSelected ? "$birthDateInString":initValue,
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                      ),

                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              autocorrect: false,
                              controller: _incomeController,
                              maxLines: 1,
                              validator: (value) {
                                if (value!.isEmpty ) {
                                  return 'Please enter family income';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.account_balance,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  labelText: 'Family Income',
                                  hintText: "Enter your family Income",
                                  labelStyle: TextStyle(
                                      decorationStyle:
                                      TextDecorationStyle.solid)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              autocorrect: false,
                              controller: _instituteController,
                              maxLines: 1,
                              validator: (value) {
                                if (value!.isEmpty ) {
                                  return 'Please enter Insitute';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.school,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  labelText: 'Insitution',
                                  hintText: "Enter your Institution",
                                  labelStyle: TextStyle(
                                      decorationStyle:
                                      TextDecorationStyle.solid)),
                            ),
                          ),


                          const SizedBox(
                            height: 15,
                          ),
                          RaisedButton(
                            elevation: 4,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 38),
                            color: Colors.teal,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              "SUBMIT",
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () async {
                              if ((_nameController == null ||
                                  _phoneController == null)) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      title: const Text(
                                        "TRY AGAIN",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      content: const Text(
                                          "Name and Phone Number are mandatory"),
                                      actions: <Widget>[
                                        MaterialButton(
                                          child: const Text(
                                            "RETRY",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        )
                                      ],
                                    );},);
                              } else if (!(_formkey.currentState!
                                  .validate())) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      title: const Text(
                                        "TRY AGAIN",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      content: const Text(
                                          "Please Check Your Detials"),
                                      actions: <Widget>[
                                        MaterialButton(
                                          child: const Text(
                                            "RETRY",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        )
                                      ],
                                    );},);

                              }
                              else{
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Home();
                                    },
                                  ),
                                );

                              }
                            },
                          ),
                          //logut
                          RaisedButton(
                            elevation: 4,
                            padding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 38),
                            color: Colors.teal,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              "Logout",
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () async {
                              signOutGoogle();
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(builder: (context) {
                                    return LoginPage();
                                  }), ModalRoute.withName('/'));
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
