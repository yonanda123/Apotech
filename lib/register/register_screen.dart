import 'package:flutter/material.dart';
import 'package:apotech/login/login_screen.dart';
import 'package:apotech/verify/verify_screen.dart';

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
                builder: (context) => LoginScreen(),
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

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create your account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff090F47),
                  fontSize: 24.0,
                  fontFamily: 'OverpassExtraBold',
                ),
              ),
              SizedBox(height: 24.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  labelStyle: TextStyle(
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
                  contentPadding: EdgeInsets.only(top: 20.0),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mobile Phone',
                  labelStyle: TextStyle(
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
                  contentPadding: EdgeInsets.only(top: 20.0),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
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
                  contentPadding: EdgeInsets.only(top: 20.0),
                ),
              ),
              SizedBox(height: 16.0),
              Stack(
                children: [
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
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
                    top: 6,
                    right: -16,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      child: Image.asset(
                        _isPasswordVisible
                            ? 'assets/icons/view.png'
                            : 'assets/icons/hide.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyScreen(),
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
                        'CREATE ACCOUNT',
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
              SizedBox(height: 17.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
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
            ],
          ),
        ),
      ),
    );
  }
}
