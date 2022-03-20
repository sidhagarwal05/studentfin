import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

import '../applied.dart';
import '../splash_screen.dart';
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
            child: const Text(
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
        onTap: () {
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
          const SizedBox(
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
                        const SizedBox(
                          height: 15,
                        ),
                        Text('ADOPT A HERITAGE ', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Apply by 15/05/22', style: _headerStyle),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text("This project is envisioned to fulfill the objective of the Government of India to provide an enhanced tourism experience to all travelers. These organizations would be known as “Monument Mitras” for their collaboration initiative.", style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SplashScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text("Apply now"),
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

                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('Atal New India Challenge', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Apply by 30/04/22', style: _headerStyle),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text("Atal New India Challenge is an initiative by Atal Innovation Mission aimed at supporting innovators to create products/solutions based on advanced technologies in areas of national importance and social relevance through a grant-based mechanism.", style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SplashScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text("Apply now"),
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

                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('INDIATECH HK PITCHDAY', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Apply by 10/05/22', style: _headerStyle),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text('We are a community initiative to serve as a platform for engaging of Investors and Entrepreneurs with an interest in Indian startup ecosystem, in Hong Kong, China Greater Bay and in India.', style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SplashScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text("Apply now"),
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

                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('M.TECH PROJECTS AS INTERNSHIP WITH SMALL AND MEDIUM ENTERPRISES (MSMES)', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Apply by DD/MM/YY', style: _headerStyle),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text('The main objective of the scheme is to nurture an innovation ecosystem that benefits the technologically deficient MSMEs and technical institutes both. 408 Small and Medium Enterprises have given requirement of 738 Technology students.', style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SplashScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text("Apply now"),
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

                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('AICTE-INAE TRAVEL GRANT SCHEME', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Apply by DD/MM/YY', style: _headerStyle),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text('An “AICTE-INAE Travel Grant Scheme” for Engineering Students to present papers abroad has been launched for enhancing the quality of engineering education in the country.', style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SplashScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text("Apply now"),
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

                AccordionSection(
                  isOpen: true,
                  leftIcon:
                  const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Colors.red,
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('SUPPORT TO STUDENTS FOR PARTICIPATING IN COMPETITION ABROAD (SSPCA)', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Apply by DD/MM/YY', style: _headerStyle),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text('The objective of the scheme is to provide travel assistance registration fees to a team of minimum 2 to 10 students for attending competition at international level in order to encourage engineering students to improve their field of technical education.', style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SplashScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text("Apply now"),
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
            ),
          )
        ],
      ),
    );
  }
}
