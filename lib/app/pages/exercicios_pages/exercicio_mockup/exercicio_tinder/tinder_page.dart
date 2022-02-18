import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  final Color colorWhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFED7263),
              Color(0xFFe94c76),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: colorWhite,
              ),
            ),
            const SizedBox(height: 135),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://logosmarcas.net/wp-content/uploads/2020/09/Tinder-Logo.png',
                        height: 150,
                        width: 150,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text.rich(
                      TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to our ',
                        children: [
                          TextSpan(
                              text:
                                  'Terms. Learn how we process your data in our Privacy '),
                          TextSpan(text: 'Policy and Cookies Policy. '),
                        ],
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    Icon(
                      Icons.apple,
                      color: Colors.white,
                      size: 24,
                    ),
                    // Image.asset(
                    //   'assets_tinder/icon-apple.png',
                    //   width: 10,
                    //   height: 10,
                    // ),
                    const SizedBox(width: 80),
                    Text(
                      'SIGN IN WITH APPLE',
                      style: TextStyle(
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: 24,
                    ),
                    // Image.asset(
                    //   'assets_tinder/facebook.png',
                    //   color: colorWhite,
                    //   width: 5,
                    //   height: 5,
                    //   scale: 0.2,
                    // ),
                    const SizedBox(width: 65),
                    Text(
                      'SIGN IN WITH FACEBOOK',
                      style: TextStyle(
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 24,
                    ),
                    // Image.asset(
                    //   'assets_tinder/balao.png',
                    //   color: colorWhite,
                    //   width: 10,
                    //   height: 10,
                    // ),
                    const SizedBox(width: 40),
                    Text(
                      'SIGN IN WITH PHONE NUMBER',
                      style: TextStyle(
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Trouble Signing In?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
