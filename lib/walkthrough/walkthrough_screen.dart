import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:apotech/login/login_screen.dart';

class WalkthroughScreen extends StatefulWidget {
  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  int _currentIndex = 0;

  final List<String> titles = [
    'View and buy Medicine online',
    'Explore Features',
    'Get Started',
  ];

  final List<String> descriptions = [
    'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer',
    'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer',
    'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer',
  ];

  final List<String> images = [
    'assets/images/Group1207.png',
    'assets/images/Group1208.png',
    'assets/images/Group1209.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: titles.length,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                print("Index changed to $index");
                print(
                    "Title: ${titles[index]}, Description: ${descriptions[index]}, Image: ${images[index]}");
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return buildPage(
                title: titles[_currentIndex],
                description: descriptions[_currentIndex],
                image: images[_currentIndex],
              );
            },
          ),
          Positioned(
            bottom: 50.0,
            left: 20.0,
            child: _currentIndex == 0
                ? TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0x73090F47),
                        fontSize: 14.0,
                      ),
                    ),
                  )
                : _currentIndex > 0
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex--;
                          });
                        },
                        child: Text(
                          'Prev',
                          style: TextStyle(
                            color: Color(0x73090F47),
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    : Container(),
          ),
          Positioned(
            bottom: 50.0,
            right: 20.0,
            child: TextButton(
              onPressed: () {
                if (_currentIndex < titles.length - 1) {
                  setState(() {
                    _currentIndex++;
                  });
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                }
              },
              child: Text(
                _currentIndex == titles.length - 1 ? 'Finish' : 'Next',
                style: TextStyle(
                  color: Color(0xff4157FF),
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                titles.length,
                (index) => buildIndicator(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage(
      {required String title,
      required String description,
      required String image}) {
    print("Building page with Image: $image");
    print("Building page with Image: $title");
    print("Building page with Image: $description");
    print("Building page with Image: $_currentIndex");
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 256.3,
            height: 284,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff090F47),
                fontSize: 24.0,
                fontFamily: 'OverpassExtraBold',
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.only(right: 80, left: 80),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 16.0,
                  fontFamily: 'OverpassLight'),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator({required int index}) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Color(0xff4157FF) : Color(0xffC4C4C4),
      ),
    );
  }
}
