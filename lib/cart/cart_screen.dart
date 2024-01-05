import 'package:flutter/material.dart';
import 'package:apotech/category_listing/category_listing_screen.dart';
import 'package:apotech/checkout/checkout_screen.dart';

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
                builder: (context) => CategoryListing(),
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

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 Items in your cart',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                  Row(
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
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    width: 101.0,
                    height: 110.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/checkout1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sugar free gold',
                          style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 14.0,
                            fontFamily: 'OverpassExtraBold',
                          ),
                        ),
                        Text(
                          'bottle of 500 pellets',
                          style: TextStyle(
                            color: Color(0x73090F47),
                            fontSize: 12.0,
                            fontFamily: 'OverpassLight',
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Rp 25.000',
                          style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 18.0,
                            fontFamily: 'OverpassExtraBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Image.asset('assets/icons/close.png'),
                        onPressed: () {},
                      ),
                      SizedBox(height: 18),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Color(0xffF2F4FF),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.all(0),
                              icon: CircleAvatar(
                                radius: 40.0,
                                backgroundColor: Color(0xffDFE3FF),
                                child: Icon(
                                  Icons.remove,
                                  size: 24.0,
                                  color: Color(0xff4157FF),
                                ),
                              ),
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '$quantity',
                              style: TextStyle(
                                  fontSize: 18.0, fontFamily: 'sofiaproLight'),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            IconButton(
                              padding: EdgeInsets.all(0),
                              icon: CircleAvatar(
                                radius: 100.0,
                                backgroundColor: Color(0xffA0ABFF),
                                child: Icon(
                                  Icons.add,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    width: 101.0,
                    height: 110.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/checkout2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sugar free gold',
                          style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 14.0,
                            fontFamily: 'OverpassExtraBold',
                          ),
                        ),
                        Text(
                          'bottle of 500 pellets',
                          style: TextStyle(
                            color: Color(0x73090F47),
                            fontSize: 12.0,
                            fontFamily: 'OverpassLight',
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Rp 18.000',
                          style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 18.0,
                            fontFamily: 'OverpassExtraBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Image.asset('assets/icons/close.png'),
                        onPressed: () {},
                      ),
                      SizedBox(height: 18),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Color(0xffF2F4FF),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.all(0),
                              icon: CircleAvatar(
                                radius: 40.0,
                                backgroundColor: Color(0xffDFE3FF),
                                child: Icon(
                                  Icons.remove,
                                  size: 24.0,
                                  color: Color(0xff4157FF),
                                ),
                              ),
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '$quantity',
                              style: TextStyle(
                                  fontSize: 18.0, fontFamily: 'sofiaproLight'),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            IconButton(
                              padding: EdgeInsets.all(0),
                              icon: CircleAvatar(
                                radius: 100.0,
                                backgroundColor: Color(0xffA0ABFF),
                                child: Icon(
                                  Icons.add,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x99E0E0E0), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Image.asset('assets/icons/tag.png'),
                    ),
                    Expanded(
                      child: Text(
                        'T1 Coupon applied',
                        style: TextStyle(
                          color: Color(0xff27AE60),
                          fontSize: 16,
                          fontFamily: 'OverpassLight',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Image.asset('assets/icons/close.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Payment Summary',
                  style: TextStyle(
                    color: Color(0xff090F47),
                    fontSize: 18.0,
                    fontFamily: 'OverpassBold',
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Total',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                  Text(
                    'Rp 228.800',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassBold',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items Discount',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                  Text(
                    '- Rp 28.800',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassBold',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Coupon Discount',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                  Text(
                    '- Rp 15.800',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassBold',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                  Text(
                    'Free',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassBold',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 16.0,
                      fontFamily: 'OverpassSemibold',
                    ),
                  ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutScreen(),
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
                      'GO TO CART',
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
