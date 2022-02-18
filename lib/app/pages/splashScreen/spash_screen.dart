import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
      (value) => Navigator.pushNamed(context, '/home'),
    );
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/masterclass_logo.png'),
      ),
    );
  }
}
