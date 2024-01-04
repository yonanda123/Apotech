import 'package:flutter/material.dart';
import 'package:apotech/verify/verify_screen.dart';
import 'package:apotech/home/home_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({required this.height});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Align(
        alignment: Alignment(1.0, 5),
        child: IconButton(
          icon: Image.asset(
            'assets/icons/arrow_back.png',
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => VerifyScreen(),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

class VerifySuccesScreen extends StatefulWidget {
  const VerifySuccesScreen({super.key});

  @override
  State<VerifySuccesScreen> createState() => _VerifySuccesScreenState();
}

class _VerifySuccesScreenState extends State<VerifySuccesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
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
              'Phone Number Verified',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff090F47),
                fontSize: 24.0,
                fontFamily: 'OverpassExtraBold',
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(right: 64, left: 64),
              child: Text(
                'Congradulations, your phone number has been verified. You can start using the app',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0x73090F47),
                    fontSize: 16.0,
                    fontFamily: 'OverpassLight'),
              ),
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
                        'SUBMIT CODE',
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
