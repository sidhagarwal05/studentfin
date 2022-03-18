
import 'dart:ui';

import 'package:flutter/material.dart';


import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../applied.dart';

class ProjectFunding extends StatefulWidget {
  static const routeName = '/user-info';

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<ProjectFunding>
    with SingleTickerProviderStateMixin {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _descController = new TextEditingController();
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
  List<String> depts = [
    "None",
    "Application Development",
    "Machine Learning",
    "Blockchain",
    "Cloud Computing",
    "Robotics"
  ];
  var hostel;

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
                          const Text("Enter project details: ",
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
                                  return 'Please enter the name of project';
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
                                  labelText: 'Project Name',
                                  hintText: "Enter the name of project",
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
                              minLines: 2,
                              maxLines: 5,
                              keyboardType: TextInputType.multiline,
                              autocorrect: false,
                              controller: _descController,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 1) {
                                  return 'Please the Project Details';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.info_rounded,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  labelText: 'Project Description',
                                  hintText: "Enter project details",
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
                            child: Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.category_sharp,
                                          size: 35,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 18,
                                        ),
                                        DropdownButton(
                                          iconEnabledColor: Colors.transparent,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                          elevation: 2,
                                          hint: Text(
                                            'Project Field',
                                            style: TextStyle(
                                                color: Colors.black87, fontSize: 18),
                                          ), // Not necessary for Option 1
                                          value: hostel,
                                          onChanged: (newValue) {
                                            setState(() {
                                              if (newValue == "None") {
                                                hostel = null;
                                              } else {
                                                hostel = newValue;
                                              }
                                            });
                                            print("hostel:" + hostel.toString());
                                          },
                                          items: depts.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down_circle_outlined,
                                      size: 25,
                                      color: Colors.black,
                                    ),

                                  ],
                                ),
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
                                  return 'Please enter amount required';
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
                                  labelText: 'Required Amount',
                                  hintText: "Enter the amount required",
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
                                          "Please Check Your Details"),
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
                                      return Applied();
                                    },
                                  ),
                                );

                              }
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
