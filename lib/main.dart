import 'package:flutter/material.dart';
import 'package:qr_app/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '_dorava',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: Color(0xFF900C3F),
        accentColor: Color(0xFF511845),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'iranyekan'),
        ),
      ),
      home: HomePage(),
    );
  }
}
