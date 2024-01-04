// splash_screen/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:apotech/walkthrough/walkthrough_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WalkthroughScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/images/MaskGroup.png', 
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, 
              children: [
                // Logo image
                Image.asset(
                  'assets/images/Group1169.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Apotech',
                  style: TextStyle(
                    fontFamily:
                        'sofiapro-light', 
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
