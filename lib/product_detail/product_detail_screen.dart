import 'package:flutter/material.dart';
import 'package:apotech/category_listing/category_listing_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:apotech/cart/cart_screen.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  final double value;

  CustomLinearProgressIndicator({required this.value});

  @override
  Widget build(BuildContext context) {
    double clampedValue = value.clamp(0.0, 1.0);

    return Container(
      height: 2.0,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        gradient: LinearGradient(
          colors: [Color(0xff4157FF), Color(0x1A000000)],
          stops: [0.0, clampedValue],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int index;
  final int currentIndex;

  const Indicator({required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4.0,
      height: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == currentIndex ? Color(0xff4157FF) : Color(0x264157FF),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({required this.height});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Align(
        alignment: Alignment(1.0, 4),
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
      actions: [
        Align(
          alignment: Alignment(1.0, 4),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/notification24.png', width: 24),
          ),
        ),
        Align(
          alignment: Alignment(1.0, 4),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/cart24.png', width: 24),
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

class ProductDetailScreen extends StatefulWidget {
  final Map<String, dynamic> product;

  ProductDetailScreen({required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late List<String> carouselImages;
  int currentIndex = 0;
  String selectedPackageSize = '';
  final List<String> packageList = ['Rp 252.000', 'Rp 100.000', 'Rp 160.000'];
  final List<String> packageDetail = [
    '500 pellets',
    '110 pellets',
    '300 pellets'
  ];

  @override
  void initState() {
    super.initState();
    carouselImages = [
      widget.product['imagePath'],
      widget.product['imagePath'],
      widget.product['imagePath'],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product['title'],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff090F47),
                  fontSize: 24.0,
                  fontFamily: 'OverpassExtraBold',
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Etiam mollis metus non purus',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 16.0,
                  fontFamily: 'OverpassLight',
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 25.0),
              CarouselSlider.builder(
                itemCount: carouselImages.length,
                options: CarouselOptions(
                  height: 140.0,
                  aspectRatio: 16 / 10,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  disableCenter: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                        image: AssetImage(carouselImages[index]),
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 16.0,
                  margin: EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      carouselImages.length,
                      (i) => Indicator(
                        index: i,
                        currentIndex: currentIndex,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                widget.product['price'],
                style: TextStyle(
                  color: Color(0xff090F47),
                  fontSize: 18.0,
                  fontFamily: 'OverpassExtraBold',
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Etiam mollis ',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 14.0,
                  fontFamily: 'OverpassLight',
                ),
              ),
              SizedBox(height: 8.0),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              SizedBox(height: 8.0),
              Text(
                'Package size',
                style: TextStyle(
                  color: Color(0xff090F47),
                  fontSize: 18.0,
                  fontFamily: 'OverpassExtraBold',
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: packageList.length,
                  itemBuilder: (context, index) {
                    String package = packageList[index];
                    String package2 = packageDetail[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 16.0, bottom: 4),
                      child: ExclusiveCheckboxButton(
                        label: package,
                        label2: package2,
                        onSelected: () {
                          setState(() {
                            selectedPackageSize = package;
                          });
                        },
                        isSelected: selectedPackageSize == package,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Product Details',
                style: TextStyle(
                  color: Color(0xff090F47),
                  fontSize: 18.0,
                  fontFamily: 'OverpassExtraBold',
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 14.0,
                  fontFamily: 'OverpassLight',
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Rating and Reviews',
                style: TextStyle(
                  color: Color(0xff090F47),
                  fontSize: 18.0,
                  fontFamily: 'OverpassExtraBold',
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                height: 100,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Row(
                            children: [
                              Text(
                                widget.product['rating'],
                                style: TextStyle(
                                  color: Color(0xff090F47),
                                  fontSize: 33.0,
                                  fontFamily: 'OverpassExtraBold',
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Icon(
                                Icons.star,
                                color: Color(0xffFFC000),
                                size: 28,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 32),
                              child: Text(
                                '923 Ratings',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Text(
                                'and 257 Reviews',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    VerticalDivider(
                      color: Color(0x1A000000),
                      thickness: 1,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '4',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Icon(
                                  Icons.star,
                                  color: Color(0xffFFC000),
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              CustomLinearProgressIndicator(value: 0.67),
                              SizedBox(width: 8.0),
                              Text(
                                '67 %',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '4',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Icon(
                                  Icons.star,
                                  color: Color(0xffFFC000),
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              CustomLinearProgressIndicator(value: 0.2),
                              SizedBox(width: 8.0),
                              Text(
                                '20%',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Icon(
                                  Icons.star,
                                  color: Color(0xffFFC000),
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              CustomLinearProgressIndicator(value: 0.07),
                              SizedBox(width: 8.0),
                              Text(
                                '7%',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Icon(
                                  Icons.star,
                                  color: Color(0xffFFC000),
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              CustomLinearProgressIndicator(value: 0),
                              SizedBox(width: 8.0),
                              Text(
                                '0%',
                                style: TextStyle(
                                  color: Color(0x73090F47),
                                  fontSize: 14.0,
                                  fontFamily: 'OverpassLight',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color(0x73090F47),
                                    fontSize: 14.0,
                                    fontFamily: 'OverpassLight',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xffFFC000),
                                    size: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                CustomLinearProgressIndicator(value: 0.02),
                                SizedBox(width: 8.0),
                                Text(
                                  '2%',
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
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 51,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Hoffman',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 18.0,
                      fontFamily: 'OverpassExtraBold',
                    ),
                  ),
                  Text(
                    '05- oct 2023',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC000),
                      size: 16,
                    ),
                  ),
                  Text(
                    widget.product['rating'],
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 14.0,
                  fontFamily: 'OverpassLight',
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Divider(
                color: Color(0x1A000000),
                thickness: 1,
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Hoffman',
                    style: TextStyle(
                      color: Color(0xff090F47),
                      fontSize: 18.0,
                      fontFamily: 'OverpassExtraBold',
                    ),
                  ),
                  Text(
                    '09- oct 2023',
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC000),
                      size: 16,
                    ),
                  ),
                  Text(
                    widget.product['rating'],
                    style: TextStyle(
                      color: Color(0x73090F47),
                      fontSize: 14.0,
                      fontFamily: 'OverpassLight',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ',
                style: TextStyle(
                  color: Color(0x73090F47),
                  fontSize: 14.0,
                  fontFamily: 'OverpassLight',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
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

class ExclusiveCheckboxButton extends StatefulWidget {
  final String label;
  final String label2;
  final Function onSelected;
  final bool isSelected;

  const ExclusiveCheckboxButton({
    required this.label,
    required this.label2,
    required this.onSelected,
    required this.isSelected,
  });

  @override
  _ExclusiveCheckboxButtonState createState() =>
      _ExclusiveCheckboxButtonState();
}

class _ExclusiveCheckboxButtonState extends State<ExclusiveCheckboxButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (!widget.isSelected) {
          widget.onSelected();
        }
      },
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          Size(125, 68),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return widget.isSelected ? Color(0xFFFFF8E1) : Color(0xffF5F5F5);
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(
              color: widget.isSelected ? Color(0xFFFFA41B) : Color(0xffF5F5F5),
              width: widget.isSelected ? 1.0 : 1.0,
            ),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.label,
              style: TextStyle(
                fontSize: 13,
                color: widget.isSelected ? Color(0xFFFFA41B) : Colors.black,
                fontFamily: 'OverpassExtraBold',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.label2,
              style: TextStyle(
                fontSize: 15,
                color: widget.isSelected ? Color(0xFFFFA41B) : Colors.black,
                fontFamily: 'OverpassLight',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
