import 'package:flutter/material.dart';
import 'package:apotech/home/home_screen.dart';

class CheckoutSuccessScreen extends StatefulWidget {
  const CheckoutSuccessScreen({super.key});

  @override
  State<CheckoutSuccessScreen> createState() => _CheckoutSuccessScreenState();
}

class _CheckoutSuccessScreenState extends State<CheckoutSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 56.0),
            Image.asset(
              'assets/images/succes.png',
              width: 256.3,
              height: 284,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 56.0),
            Text(
              'Thank you',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff090F47),
                fontSize: 24.0,
                fontFamily: 'OverpassExtraBold',
              ),
            ),
            SizedBox(height: 16.0),
            Text.rich(
              TextSpan(
                text: 'Your Order will be delivered with invoice ',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 16.0,
                  fontFamily: 'OverpassLight',
                ),
                children: [
                  TextSpan(
                    text: '#INV20231212',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 16.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                  TextSpan(
                    text: '. You can track the delivery in the order section.',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 16.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
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
                        'Continue Order',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16.0,
                          fontFamily: 'OverpassExtraBold',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
