import 'package:flutter/material.dart';
import 'package:apotech/login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/MaskGroup2.png',
              width: 256.3,
              height: 284,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome to Apotech',
              style: TextStyle(
                color: Color(0xff090F47),
                fontSize: 24.0,
                fontFamily: 'OverpassExtraBold',
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: Text(
                'Do you want some help with your health to get better life?',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 16.0,
                  fontFamily: 'OverpassLight',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Add your logic for email signup here
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(311, 50),
                primary: Color(0xff4157FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                elevation: 14.0,
                shadowColor: Color(0xff4157FF).withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'SIGN UP WITH EMAIL',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 16.0,
                    fontFamily: 'OverpassExtraBold',
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                // Add your logic for email signup here
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(311, 50),
                primary: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                elevation: 14.0,
                shadowColor: Color(0xff4157FF).withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Image.asset(
                        'assets/icons/facebook.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'CONTINUE WITH FACEBOOK',
                      style: TextStyle(
                        color: Color(0xbf090F47),
                        fontSize: 13.0,
                        fontFamily: 'OverpassExtraBold',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(311, 50),
                primary: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                elevation: 14.0,
                shadowColor: Color(0xff4157FF).withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Image.asset(
                        'assets/icons/google-hangouts.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'CONTINUE WITH GMAIL',
                      style: TextStyle(
                        color: Color(0xbf090F47),
                        fontSize: 13.0,
                        fontFamily: 'OverpassExtraBold',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.0),
            // Login text button
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text(
                'LOGIN',
                style: TextStyle(
                    color: Color(0x73090F47),
                    fontSize: 14.0,
                    fontFamily: 'OverpassLight',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.1, 1),
                        blurRadius: 5.0,
                        color: Color(0x73090F47),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
