
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

import '../applied.dart';

class ScholarshipList extends StatefulWidget {

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<ScholarshipList>
    with SingleTickerProviderStateMixin {

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
  '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text("Available Options: ",
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
          Expanded(child:      Accordion(
            maxOpenSections: 2,
            headerBackgroundColorOpened: Colors.black54,
            disableScrolling: false,
            headerPadding:
            const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
            // sectionClosingHapticFeedback: SectionHapticFeedback.light,
            // openAndCloseAnimation: false,
            children: [

              AccordionSection(
                isOpen: true,
                leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
                headerBackgroundColor: Colors.black,
                headerBackgroundColorOpened: Colors.red,
                header:Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text('XYZ Company', style: _headerStyle),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [

                          Text('Apply by DD/MM/YY', style: _headerStyle),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )

                    ]
                ),
                content:  Column(
                  children: [
                    Text(_loremIpsum, style: _contentStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Applied();
                                },
                              ),
                            );
                          },
                          child: Text("Apply now"),
                        ),
                      ],
                    ),
                  ],
                ),
                contentHorizontalPadding: 20,
                contentBorderWidth: 1,
                // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
              ),

            ],
          ),)
        ],
      )


    );
  }
}
