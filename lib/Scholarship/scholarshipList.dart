import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import '../applied.dart';
import '../splash_screen.dart';

class ScholarshipList extends StatefulWidget {
  const ScholarshipList({Key? key}) : super(key: key);

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<ScholarshipList>
    with SingleTickerProviderStateMixin {
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF004D40),
        body: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text("Available Options: ",
                style: TextStyle(
                    color: Colors.white,
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
                    headerBackgroundColorOpened: Color(0xFF512DA8),
                    header: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text('PG SCHOLARSHIP', style: _headerStyle),
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
                        Text("Scholarship is awarded to full time GATE/GPAT qualified students admitted to M.E./ M. Tech/ M. Arch and M.Pharma courses in AICTE approved Institutions/Colleges @Rs. 12,400/- PM/ student.", style: _contentStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color:Color(0xFF512DA8)),
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
                    headerBackgroundColorOpened: Color(0xFF512DA8),
                    header: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text('AICTE DOCTORAL FELLOWSHIP (ADF)', style: _headerStyle),
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
                        Text("Admitting full time meritorious research scholars by providing research fellowship who wants to seek admission to Ph.D. in AICTE approved Technical Institutes/University Departments for carrying out research in thrust areas", style: _contentStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Color(0xFF512DA8)),
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
                    headerBackgroundColorOpened: Color(0xFF512DA8),
                    header: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text('Merit cum Means Scholarship for Professional and Technical Courses CS (Minorities)', style: _headerStyle),
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
                        Text("•	Course fee of up to INR 20,000. \n•	Maintenance allowance of INR 1,000 per month to hostellers\n•	Maintenance allowance of INR 500 per month to day scholars", style: _contentStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Color(0xFF512DA8)),
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
                    headerBackgroundColorOpened: Color(0xFF512DA8),
                    header: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text('Post Graduate Merit Scholarship for University Rank Holders', style: _headerStyle),
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
                        Text("INR 3,100 per month for a duration of 2 years", style: _contentStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Color(0xFF512DA8)),
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
                    headerBackgroundColorOpened: Color(0xFF512DA8),
                    header: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text('Post Graduate Scholarship for Professional Courses for SC/ST', style: _headerStyle),
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
                        Text("•	INR 7,800 per month to students pursuing ME/M.Tech\n•	INR 4,500 per month to students studying other professional courses", style: _contentStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Color(0xFF512DA8)),
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
        )
    );
  }
}
