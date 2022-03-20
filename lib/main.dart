import 'package:flutter/material.dart';
import 'login_page.dart';
import 'splash_screen_entry.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashScreen1(),
    );
  }
}