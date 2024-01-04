import 'package:flutter/material.dart';

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
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WELCOME BACK!',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xff090F47),
                fontSize: 24.0,
                fontFamily: 'OverpassExtraBold',
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Image.asset(
                  'assets/icons/person.png',
                ),
                hintText: 'Username',
                hintStyle: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 18.0,
                  fontFamily: 'arial',
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x1A090F47),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff4157FF),
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Stack(
              children: [
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/icons/lock.png',
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 18.0,
                      fontFamily: 'arial',
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x1A090F47),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff4157FF),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: TextButton(
                    onPressed: () {
                      // Add your logic for forgot password here
                    },
                    child: Text(
                      'Forgot?',
                      style: TextStyle(
                        color: Color(0x73090F47),
                        fontSize: 12.0,
                        fontFamily: 'arial',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 56.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      'SIGN IN',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 16.0,
                        fontFamily: 'OverpassExtraBold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      // Add your logic for navigating to the sign-up screen here
                    },
                    child: Text(
                      'Don’t have an account? Sign Up',
                      style: TextStyle(
                          color: Color(0x73090F47),
                          fontSize: 15.0,
                          fontFamily: 'sofiaproLight'),
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
