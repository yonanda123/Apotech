// splash_screen/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:apotech/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tambahkan logika atau pindah ke halaman lain di sini setelah waktu tertentu
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
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
            'assets/images/MaskGroup.png', // Ganti dengan path gambar background Anda
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, // Set ukuran utama ke minimum
              children: [
                // Logo image
                Image.asset(
                  'assets/images/Group1169.png', // Ganti dengan path gambar background Anda
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Apotech',
                  style: TextStyle(
                    fontFamily:
                        'sofiapro-light', // Ganti dengan font yang Anda miliki
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
