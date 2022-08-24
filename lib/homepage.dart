import 'package:amazon_test/models/Circualer_Image.dart';
import 'package:amazon_test/models/Triangle_Image.dart';
import 'package:amazon_test/modules/FirstDiscount.dart';
import 'package:amazon_test/shared/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'modules/SecondDiscount.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  
  List<CircularImage> circularImageList = [
    CircularImage(
        imageData: Image.asset("assets/images/prime.PNG"), text: "Prime"),
    CircularImage(
        imageData: Image.asset("assets/images/Deals.PNG"), text: "Deals"),
    CircularImage(
        imageData: Image.asset("assets/images/Coupon.PNG"), text: "Coupons"),
    CircularImage(
        imageData: Image.asset("assets/images/elect.PNG"), text: "Electronics"),
    CircularImage(
        imageData: Image.asset("assets/images/prime.PNG"), text: "Prime"),
    CircularImage(
        imageData: Image.asset("assets/images/Deals.PNG"), text: "Deals"),
    CircularImage(
        imageData: Image.asset("assets/images/Coupon.PNG"), text: "Coupons"),
    CircularImage(
        imageData: Image.asset("assets/images/elect.PNG"), text: "Electronics"),
  ];

  List<TriangleImage> triangleImageList = [
    TriangleImage(imageData: Image.asset("assets/images/1.PNG")),
    TriangleImage(imageData: Image.asset("assets/images/2.PNG")),
    TriangleImage(imageData: Image.asset("assets/images/1.PNG")),
    TriangleImage(imageData: Image.asset("assets/images/2.PNG")),
    TriangleImage(imageData: Image.asset("assets/images/1.PNG")),
  ];

  @override
  Widget build(BuildContext contextt) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF80d1d8),
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(
              height: 7,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: textFormField(
                  iconPrefix: Icon(Icons.search),
                  formFieldText: "Search Amazon.eg"),
            ),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        showSelectedLabels: false,
        elevation: 20,

        iconSize: 33,
        //backgroundColor:Color(0xFFFFFFFF),
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {});

          currentindex = value;
          print(value);
        },
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 5,
                    color: currentindex == 0 ? Colors.green : Colors.white,
                  ))),
                  child: Icon(Icons.home)),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 5,
                    color: currentindex == 1 ? Colors.green : Colors.white,
                  ))),
                  child: Icon(Icons.person)),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 5,
                    color: currentindex == 2 ? Colors.green : Colors.white,
                  ))),
                  child: Icon(Icons.shopping_cart)),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 5,
                    color: currentindex == 3 ? Colors.green : Colors.white,
                  ))),
                  child: Icon(Icons.menu)),
              label: ""),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              color: Color(0xFFc4ede5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.add_location_outlined),
                  Text(
                    "Deliver to Hassan- Mallawi",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (BuildContext, index) =>
                        circleLogoData(incomingModel: circularImageList[index]),
                    scrollDirection: Axis.horizontal,
                    itemCount: circularImageList.length,
                  ),
                ),

                CarouselSlider(
                  items: [
                    imageScroll(
                        advImage: Icons.star,
                        advColor: Colors.cyan,
                        onTapGesture: () {
                          print("first discount");

                          Navigator.push(
                            contextt,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return FirstDiscount();
                            }),
                          );
                        }),
                    imageScroll(
                        advImage: Icons.circle,
                        advColor: Colors.tealAccent,
                        onTapGesture: () {
                          Navigator.push(
                            contextt,
                            MaterialPageRoute(builder: (contextt) {
                              return SecondDiscount();
                            }),
                          );
                        }),
                    imageScroll(advImage: Icons.circle, advColor: Colors.teal),
                    imageScroll(
                      advImage: Icons.shop,
                      advColor: Colors.yellow,
                    ),
                    imageScroll(
                        advImage: Icons.print,
                        advColor: Colors.deepPurpleAccent),
                  ],
                  options: CarouselOptions(
                    // autoPlay: true,
                    pauseAutoPlayInFiniteScroll: true,
                    viewportFraction: 1,
                    //clipBehavior: Clip.none,

                    autoPlayAnimationDuration: const Duration(milliseconds: 50),
                    autoPlayCurve: Curves.linear,
                    autoPlayInterval: const Duration(seconds: 6),
                  ),
                ),


                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (BuildContext, index) => triangleImage(
                        TriangleImageModel: triangleImageList[index]),
                    itemCount: triangleImageList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                textAmazon(
                  textString:
                      'Get your discount enjoy 0% interest on installments*',
                  fontWeight: FontWeight.normal,
                ),

                /////
              ],
            ),
          ],
        ),
      ),
    );
  }
}
