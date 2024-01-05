import 'package:flutter/material.dart';
import 'package:apotech/home/home_screen.dart';
import 'package:apotech/product_detail/product_detail_screen.dart';

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
                builder: (context) => HomeScreen(),
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
            'Diabetes Care',
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

class CategoryListing extends StatefulWidget {
  const CategoryListing({super.key});

  @override
  State<CategoryListing> createState() => _CategoryListingState();
}

class _CategoryListingState extends State<CategoryListing> {
  final List<Map<String, dynamic>> diabeticData = [
    {
      'title': 'Sugar Substitute',
      'imagePath': 'assets/images/Sugar.png',
    },
    {
      'title': 'Juices & Vinegars',
      'imagePath': 'assets/images/Juices.png',
    },
    {
      'title': 'Vitamins Medicines',
      'imagePath': 'assets/images/vitamins.png',
    },
  ];
  final List<Map<String, dynamic>> productData = [
    {
      'title': 'Accu-check Active Test Strip',
      'price': 'Rp 112.000',
      'imagePath': 'assets/images/product3.png',
      'rating': '4.2',
      'isSale': true,
      'discountPercentage': null,
    },
    {
      'title': 'Omron HEM-8712 BP Monitor',
      'price': 'Rp 150,000',
      'imagePath': 'assets/images/product1.png',
      'rating': '4.2',
      'isSale': false,
      'discountPercentage': 15,
    },
    {
      'title': 'Accu-check Active Test Strip',
      'price': 'Rp 112,000',
      'imagePath': 'assets/images/product2.png',
      'rating': '4.2',
      'isSale': false,
      'discountPercentage': null,
    },
    {
      'title': 'Omron HEM-8712 BP Monitor',
      'price': 'Rp 150,000',
      'imagePath': 'assets/images/product4.png',
      'rating': '4.2',
      'isSale': false,
      'discountPercentage': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Container(
                width: 370,
                height: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/images/carousel.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Diabetic Diet',
                  style: TextStyle(
                    color: Color(0xff090F47),
                    fontSize: 16.0,
                    fontFamily: 'OverpassMedium',
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Container(
                height: 162.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: diabeticData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Container(
                        width: 110.0,
                        height: 162.0,
                        decoration: BoxDecoration(
                          color: Color(0xffF5F7FA),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 110.0,
                              height: 110.0,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Image.asset(
                                  diabeticData[index]['imagePath'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    diabeticData[index]['title'],
                                    style: TextStyle(
                                      color: Color(0xff090F47),
                                      fontSize: 13,
                                      fontFamily: 'OverpassLight',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'All Products',
                  style: TextStyle(
                    color: Color(0xff090F47),
                    fontSize: 16.0,
                    fontFamily: 'OverpassMedium',
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Container(
                height: 540.0,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.70,
                  ),
                  itemCount: productData.length,
                  itemBuilder: (context, index) {
                    bool isSale = productData[index]['isSale'] ?? false;
                    bool hasDiscount =
                        productData[index]['discountPercentage'] != null;

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(
                                product: productData[index]),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 157,
                                  height: 154,
                                  color: Color(0xffF5F7FA),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    child: Image.asset(
                                      productData[index]['imagePath'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productData[index]['title'],
                                        style: TextStyle(
                                          color: Color(0xff090F47),
                                          fontSize: 13,
                                          fontFamily: 'OverpassLight',
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            productData[index]['price'],
                                            style: TextStyle(
                                              color: Color(0xff090F47),
                                              fontSize: 14,
                                              fontFamily: 'OverpassExtraBold',
                                            ),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              color: Color(0xffFFC000),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.0),
                                                bottomLeft:
                                                    Radius.circular(8.0),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 18,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  productData[index]['rating'],
                                                  style: TextStyle(
                                                    color: Color(0xffffffff),
                                                    fontSize: 13,
                                                    fontFamily:
                                                        'OverpassExtraBold',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (isSale && !hasDiscount)
                              _buildSaleLabel()
                            else if (!isSale && hasDiscount)
                              _buildDiscountLabel(
                                productData[index]['discountPercentage'],
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSaleLabel() {
    return Positioned(
      top: 8.0,
      left: 8.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Color(0xffFF5A5A),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Text(
          'SALE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontFamily: 'OverpassLight',
          ),
        ),
      ),
    );
  }

  Widget _buildDiscountLabel(int? discountPercentage) {
    return Positioned(
      top: 8.0,
      left: 8.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Color(0xffFFC618),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Text(
          '$discountPercentage% OFF',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontFamily: 'OverpassLight',
          ),
        ),
      ),
    );
  }
}
