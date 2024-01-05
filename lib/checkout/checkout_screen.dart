import 'package:flutter/material.dart';
import 'package:apotech/cart/cart_screen.dart';
import 'package:apotech/checkout_success/checkout_success_screen.dart';

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
                builder: (context) => CartScreen(),
              ),
            );
          },
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 42),
        child: Align(
          alignment: Alignment(-1, 5),
          child: Text(
            'Your Cart',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff090F47),
                fontFamily: 'OverpassExtraBold'),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '2 Items in your cart',
                      style: TextStyle(
                        color: Color(0x73090F47),
                        fontSize: 14.0,
                        fontFamily: 'OverpassLight',
                      ),
                    ),
                  ),
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        Text(
                          'Rp 185.000',
                          style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 18.0,
                            fontFamily: 'OverpassExtraBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Delivery Address',
                  style: TextStyle(
                    color: Color(0xff090F47),
                    fontSize: 16.0,
                    fontFamily: 'OverpassBold',
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 105.0,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0x1a090F47),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Radio(
                                value: null,
                                groupValue: null,
                                onChanged: null,
                                activeColor: Color(0xff4157FF),
                              ),
                              SizedBox(width: 8.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                      color: Color(0xff090F47),
                                      fontSize: 14.0,
                                      fontFamily: 'OverpassBold',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Image.asset('assets/icons/edit.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 54),
                      child: Text(
                        '(205) 555-024',
                        style: TextStyle(
                          color: Color(0x73090F47),
                          fontSize: 14.0,
                          fontFamily: 'OverpassLight',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 54),
                      child: Text(
                        '1786 Wheeler Bridge',
                        style: TextStyle(
                          color: Color(0x73090F47),
                          fontSize: 14.0,
                          fontFamily: 'OverpassLight',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 110.0,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0x1a090F47),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Radio(
                                value: null,
                                groupValue: null,
                                onChanged: null,
                                activeColor: Color(0xff4157FF),
                              ),
                              SizedBox(width: 8.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                      color: Color(0xff090F47),
                                      fontSize: 14.0,
                                      fontFamily: 'OverpassBold',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Image.asset('assets/icons/edit.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 54),
                      child: Text(
                        '(205) 555-024',
                        style: TextStyle(
                          color: Color(0x73090F47),
                          fontSize: 14.0,
                          fontFamily: 'OverpassLight',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 54),
                      child: Text(
                        '1786 Wheeler Bridge',
                        style: TextStyle(
                          color: Color(0x73090F47),
                          fontSize: 14.0,
                          fontFamily: 'OverpassLight',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(
                      Icons.add,
                      color: Color(0xff4157FF),
                      size: 16,
                    ),
                  ),
                  Text(
                    'Add more',
                    style: TextStyle(
                      color: Color(0xff4157FF),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Payment method',
                  style: TextStyle(
                    color: Color(0xff090F47),
                    fontSize: 16.0,
                    fontFamily: 'OverpassBold',
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0x1a090F47),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0x1a090F47),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset('assets/icons/credit.png'),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Credit card',
                                style: TextStyle(
                                  color: Color(0xff090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassBold',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Radio(
                            value: null,
                            groupValue: null,
                            onChanged: null,
                            activeColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0x1a090F47),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset('assets/icons/paypal.png'),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Paypal',
                                style: TextStyle(
                                  color: Color(0xff090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassBold',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Radio(
                            value: null,
                            groupValue: null,
                            onChanged: null,
                            activeColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0x1a090F47),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset('assets/icons/google.png'),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Google pay',
                                style: TextStyle(
                                  color: Color(0xff090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassBold',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Radio(
                            value: null,
                            groupValue: null,
                            onChanged: null,
                            activeColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0x1a090F47),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset('assets/icons/apple.png'),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Apple pay',
                                style: TextStyle(
                                  color: Color(0xff090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassBold',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Radio(
                            value: null,
                            groupValue: null,
                            onChanged: null,
                            activeColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutSuccessScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 50),
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
                      'Pay Now Rp 185.000',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 16.0,
                        fontFamily: 'OverpassExtraBold',
                      ),
                    ),
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
