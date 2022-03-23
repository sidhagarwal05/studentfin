import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

import 'emi.dart';

class LoanList extends StatefulWidget {
  static const routeName = '/user-info';

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<LoanList>
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
                  isOpen: false,
                  leftIcon:
                      const Icon(Icons.account_balance, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Color(0xFF512DA8),
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('Punjab National Bank Education Loan:', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('♡ 4.8', style: _headerStyle),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text("•	Interest Rate - 8.55% to 10.45%\n•	Maximum Loan Amount: Need Based\n•	Maximum Loan Tenure: 15 Years\n•	Collateral: Nill Up to Rs.7.5 lakh\n•	Margin: Nill Up to Rs.4 lakh\n•	No security is required up to Rs.7.50 lakh\n•	Moratorium period is course period and 1 year", style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.deepPurple),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Emi();
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
                AccordionSection(
                  isOpen: false,
                  leftIcon:
                  const Icon(Icons.account_balance, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Color(0xFF512DA8),
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('SBI Education Loan', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('♡ 4.5', style: _headerStyle),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text("•	Interest Rate – 10.25%\n•	No collateral or third-party guarantee required upto Rs. 7.5 lakh\n•	Repayment to be done one year after course completion\n•	Repayment up to 15 years post the course completion + 12 months\n•	Margin: Nill Up to Rs.4 lakh\n•	Zero processing fees for loans up to Rs.20 lakh\n•	Second loan can be availed for completing higher studies", style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.deepPurple),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Emi();
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
                AccordionSection(
                  isOpen: false,
                  leftIcon:
                  const Icon(Icons.account_balance, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Color(0xFF512DA8),
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('Axis Bank Education Loan', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('♡ 4.9', style: _headerStyle),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text("•	Interest Rate – 13.70% to 15.20%\n•	Minimum loan amount is Rs.50,000\n•	Maximum Loan Tenure: 15 years\n•	Margin: Nill Up to Rs.4 lakh\n•	Can secure loan before admission based on profile.\n•	Loan disbursal within 15 business days from the date the bank receives your complete application.\n•	Unsecured loans up to Rs.20 lakh for working professionals.", style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.deepPurple),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Emi();
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
                AccordionSection(
                  isOpen: false,
                  leftIcon:
                  const Icon(Icons.account_balance, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Color(0xFF512DA8),
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('HDFC Bank Education Loan', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('♡ 4.9', style: _headerStyle),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text("•	Interest Rate – 6.90% to 10.85%\n•	Maximum loan amount is Rs.30 lakh\n•	Loan repayment tenure is up to 15 years\n•	Easy documentation process\n•	No collateral required up to Rs.7.5 lakh\n•	Tax benefit can be availed on education loan\n•	Loan amount will be directly disbursed to the institution based on its fee structure", style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.deepPurple),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Emi();
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
                AccordionSection(
                  isOpen: false,
                  leftIcon:
                  const Icon(Icons.account_balance, color: Colors.white),
                  headerBackgroundColor: Colors.black,
                  headerBackgroundColorOpened: Color(0xFF512DA8),
                  header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('Tata Capital Education Loan', style: _headerStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('♡ 4.6', style: _headerStyle),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]),
                  content: Column(
                    children: [
                      Text("•	Interest Rate – 11%\n•	Maximum loan amount of Rs.25 lakh\n•	Minimum loan amount is Rs.75,000\n•	Collateral: Nill Up to Rs.4 lakh\n•	Choose from 3 EMI plans as per your convenience.\n•	Minimal documentation and quick approval of loans.", style: _contentStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.deepPurple),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Emi();
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
            ),

          ),
        ],
      ),
    );
  }
}
