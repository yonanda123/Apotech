import 'package:flutter/material.dart';
import 'package:apotech/home/home_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({required this.height});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 42),
        child: Align(
          alignment: Alignment(-1.3, 5),
          child: Text(
            'Profile',
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

enum MenuIndex { Home, Notification, Create, Cart, Profile }

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  MenuIndex _currentIndex = MenuIndex.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Colors.grey,
                    child: Image.asset('assets/images/foto.png'),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Lorem Ipsum',
                          style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 14.0,
                            fontFamily: 'OverpassExtraBold',
                          ),
                        ),
                        Text(
                          'Welcome to Apotech',
                          style: TextStyle(
                            color: Color(0x73090F47),
                            fontSize: 14.0,
                            fontFamily: 'OverpassLight',
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
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset('assets/icons/profile1.png'),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Text(
                        'Private Account',
                        style: TextStyle(
                          color: Color(0xBF091C3F),
                          fontSize: 15.0,
                          fontFamily: 'HankenGroteskBold',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF091C3F),
                      size: 16,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset('assets/icons/profile2.png'),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Text(
                        'My Consults',
                        style: TextStyle(
                          color: Color(0xBF091C3F),
                          fontSize: 15.0,
                          fontFamily: 'HankenGroteskBold',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF091C3F),
                      size: 16,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset('assets/icons/profile3.png'),
                    ),
                    SizedBox(width: 22.0),
                    Expanded(
                      child: Text(
                        'My orders',
                        style: TextStyle(
                          color: Color(0xBF091C3F),
                          fontSize: 15.0,
                          fontFamily: 'HankenGroteskBold',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF091C3F),
                      size: 16,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset('assets/icons/profile3.png'),
                    ),
                    SizedBox(width: 22.0),
                    Expanded(
                      child: Text(
                        'Billing',
                        style: TextStyle(
                          color: Color(0xBF091C3F),
                          fontSize: 15.0,
                          fontFamily: 'HankenGroteskBold',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF091C3F),
                      size: 16,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset('assets/icons/profile5.png'),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Text(
                        'Faq',
                        style: TextStyle(
                          color: Color(0xBF091C3F),
                          fontSize: 15.0,
                          fontFamily: 'HankenGroteskBold',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF091C3F),
                      size: 16,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset('assets/icons/profile6.png'),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          color: Color(0xBF091C3F),
                          fontSize: 15.0,
                          fontFamily: 'HankenGroteskBold',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF091C3F),
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
