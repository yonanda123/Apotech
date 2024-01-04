import 'package:flutter/material.dart';
import 'package:apotech/register/register_screen.dart';
import 'package:apotech/verifySucces/verify_succes_screen.dart';
import 'dart:async';

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
                builder: (context) => RegisterScreen(),
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

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  int _minutes = 0;
  int _seconds = 59;

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (_minutes == 0 && _seconds == 0) {
          _timer.cancel();
        } else if (_seconds == 0) {
          _minutes -= 1;
          _seconds = 59;
        } else {
          _seconds -= 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    _timer.cancel();
    super.dispose();
  }

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
              SizedBox(height: 8.0),
              Text(
                'We just send you a verification code via phone +62 821 39 488 953',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 16.0,
                  fontFamily: 'OverpassLight',
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6,
                  (index) => SizedBox(
                    width: 48.0,
                    child: TextFormField(
                      controller: _controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.length == 1 && index < 5) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifySuccesScreen(),
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
                ],
              ),
              SizedBox(height: 28.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'The verify code will expire in ${_minutes.toString().padLeft(2, '0')}:${_seconds.toString().padLeft(2, '0')}',
                  style: TextStyle(
                    color: Color(0x73090F47),
                    fontSize: 16.0,
                    fontFamily: 'OverpassLight',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 6.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                        color: Color(0xff4157FF),
                        fontSize: 15.0,
                        fontFamily: 'OverpassLight'),
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
