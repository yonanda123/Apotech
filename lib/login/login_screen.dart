// login/login_screen.dart
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                  'assets/images/Group1169.png'), // Ganti dengan path gambar logo Anda
              width: 200,
              height: 200,
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
            // Tambahkan formulir login atau elemen UI lainnya di sini
          ],
        ),
      ),
    );
  }
}
