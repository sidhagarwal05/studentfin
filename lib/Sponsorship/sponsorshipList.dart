import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

import 'projectFunding.dart';

class SponsorshipList extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<SponsorshipList>
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
      floatingActionButton: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
              child: Text(
                'Personal Project Funding',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),

            width: 200,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(
                  color: Colors.teal,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ProjectFunding();
              },
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
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
                  shadows: [
                    Shadow(
                        color: Colors.black54,
                        offset: Offset(1, 2),
                        blurRadius: 4)
                  ])),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Accordion(
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
                  leftIcon:
                      const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ]),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
                  contentBorderWidth: 1,
                  // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                ),
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ]),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
                  contentBorderWidth: 1,
                  // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                ),
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ]),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
                  contentBorderWidth: 1,
                  // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                ),
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ]),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
                  contentBorderWidth: 1,
                  // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                ),
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ]),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
                  contentBorderWidth: 1,
                  // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                ),
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ]),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
                  contentBorderWidth: 1,
                  // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
