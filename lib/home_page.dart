import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import './scanner.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 7,
        navigateAfterSeconds: AfterSplash(),
        title: Text(
          '_dorova',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('assets/images/wpdoon.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red);
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("_dorova"),
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: Center(
        child: Container(
          child: Image.asset('assets/images/wpdoon.png'),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(
            Icons.camera_alt,
          ),
          label: Text(
            "اسکن",
            style: TextStyle(
              fontFamily: 'iranyekan',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          foregroundColor: Color(0xFFFFFFFF),
          backgroundColor: Color(0xFFEB4559),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scanner()),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
