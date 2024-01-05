import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:apotech/category_listing/category_listing_screen.dart';
import 'package:apotech/profile/profile_screen.dart';

class Indicator extends StatelessWidget {
  final int index;
  final int currentIndex;

  const Indicator({required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == currentIndex ? Color(0xff4157FF) : Color(0x264157FF),
      ),
    );
  }
}

enum MenuIndex { Home, Notification, Create, Cart, Profile }

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MenuIndex _currentIndex = MenuIndex.Profile;

  final List<Map<String, dynamic>> categoriesData = [
    {'imagePath': 'assets/icons/Dental.png', 'title': 'Dental'},
    {'imagePath': 'assets/icons/wellness.png', 'title': 'Wellness'},
    {'imagePath': 'assets/icons/Homeo.png', 'title': 'Homeo'},
    {'imagePath': 'assets/icons/Eye Care.png', 'title': 'Eye Care'},
    {'imagePath': 'assets/icons/Skin & Hair.png', 'title': 'Skin & Hair'},
  ];

  final List<Map<String, dynamic>> productData = [
    {
      'title': 'Accu-check Active Test Strip',
      'price': 'Rp 112.000',
      'imagePath': 'assets/images/pills.png',
      'rating': '4.2'
    },
    {
      'title': 'Omron HEM-8712 BP Monitor',
      'price': 'Rp 150.000',
      'imagePath': 'assets/images/tablet.png',
      'rating': '4.2'
    },
  ];

  final List<Map<String, dynamic>> brandData = [
    {'imagePath': 'assets/images/Himallaya.png', 'title': 'Himalaya Wellness'},
    {'imagePath': 'assets/images/Accu.png', 'title': 'Accu-Chek'},
    {'imagePath': 'assets/images/VLCC.png', 'title': 'Vlcc'},
    {'imagePath': 'assets/images/Protinex.png', 'title': 'Protinex'},
  ];

  final List<String> carouselImages = [
    'assets/images/carousel.png',
    'assets/images/carousel.png',
    'assets/images/carousel.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7FBFF),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 560,
            child: Container(
              height: 248.0,
              decoration: BoxDecoration(
                color: Color(0xff4157FF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    child: Container(
                      width: 218.0,
                      height: 170.0,
                      decoration: BoxDecoration(
                        color: Color(0x1affffff),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(218.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 24.0,
                              backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Image.asset(
                                    'assets/icons/notification.png',
                                    fit: BoxFit.cover,
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    'assets/icons/schedule.png',
                                    fit: BoxFit.cover,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 24),
                          child: Text(
                            'HI, lorem',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 24.0,
                              fontFamily: 'OverpassExtraBold',
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 3),
                          child: Text(
                            'Welcome to Apotech',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 16.0,
                                fontFamily: 'OverpassLight'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 252,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 48.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Top Categories',
                      style: TextStyle(
                        color: Color(0xff090F47),
                        fontSize: 16.0,
                        fontFamily: 'OverpassMedium',
                      ),
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Container(
                    height: 140.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          categoriesData.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 4),
                            child: Container(
                              width: 80.0,
                              margin: EdgeInsets.only(right: 16.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 24.0,
                                    backgroundImage: AssetImage(
                                      categoriesData[index]['imagePath'],
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    categoriesData[index]['title'],
                                    style: TextStyle(
                                      color: Color(0xf2090F47),
                                      fontSize: 11.0,
                                      fontFamily: 'OverpassLight',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  CarouselSlider.builder(
                    itemCount: carouselImages.length,
                    options: CarouselOptions(
                      height: 140.0,
                      aspectRatio: 16 / 7,
                      viewportFraction: 0.9,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      disableCenter: true,
                    ),
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: AssetImage(carouselImages[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 16.0,
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                carouselImages.length,
                                (i) => Indicator(
                                  index: i,
                                  currentIndex: index,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Categories',
                          style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 16.0,
                            fontFamily: 'OverpassMedium',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryListing(),
                              ),
                            );
                          },
                          child: Text(
                            'More',
                            style: TextStyle(
                              color: Color(0xff006AFF),
                              fontSize: 16.0,
                              fontFamily: 'OverpassMedium',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    height: 250.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              width: 178,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    productData[index]['imagePath'],
                                    width: 178,
                                    height: 154,
                                    fit: BoxFit.cover,
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
                                              fontFamily: 'OverpassLight'),
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
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(8.0)),
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
                                                    productData[index]
                                                        ['rating'],
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
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Featured Brands',
                      style: TextStyle(
                        color: Color(0xff090F47),
                        fontSize: 16.0,
                        fontFamily: 'OverpassMedium',
                      ),
                    ),
                  ),
                  Container(
                    height: 140.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          brandData.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, right: 4),
                            child: Container(
                              width: 100.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 40.0,
                                    backgroundImage: AssetImage(
                                      brandData[index]['imagePath'],
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    brandData[index]['title'].length > 9
                                        ? '${brandData[index]['title'].substring(0, 9)}\n${brandData[index]['title'].substring(9)}'
                                        : brandData[index]['title'],
                                    style: TextStyle(
                                      color: Color(0xff090F47),
                                      fontSize: 13.0,
                                      fontFamily: 'OverpassLight',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
          ),
          Positioned(
            top: 220.0,
            left: 16.0,
            right: 16.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(56.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Color(0x73090F47)),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Medicine & Healthcare products',
                          hintStyle: TextStyle(
                            color: Color(0x73090F47),
                            fontSize: 13.0,
                            fontFamily: 'OverpassLight',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffffffff),
        currentIndex: _currentIndex.index,
        onTap: (index) {
          // Handle button tap
          setState(() {
            _currentIndex = MenuIndex.values[index];
          });

          switch (_currentIndex) {
            case MenuIndex.Home:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
              break;
            case MenuIndex.Notification:
              // Handle Notification tab
              break;
            case MenuIndex.Create:
              // Handle Create tab
              break;
            case MenuIndex.Cart:
              // Handle Cart tab
              break;
            case MenuIndex.Profile:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/Home.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/notification-black.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/create.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/schedule-black.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile.png'),
            label: '',
          ),
        ],
      ),
    );
  }
}
