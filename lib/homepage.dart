import 'package:amazon_test/models/Circualer_Image.dart';
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

  int currentindex=0;
  String testString = "assets/images/prime.PNG";

  CircularImage adv1 = CircularImage(
      imageData: Image.asset("assets/images/prime.PNG"),
      text: "test");

  CircularImage adv2 = CircularImage(imageData:
  Image.asset("assets/images/Deals.PNG"),
       text: "Deals");

  CircularImage adv3 = CircularImage(imageData:
  Image.asset("assets/images/Coupon.PNG"),
      text: "Coupons");

  CircularImage adv4 = CircularImage(imageData:
  Image.asset("assets/images/elect.PNG"),
      text: "Electronics");

  CircularImage adv5 = CircularImage(imageData:
  Image.asset("assets/images/prime.PNG"),
      text: "Deals");

  CircularImage adv6 = CircularImage(imageData:
  Image.asset("assets/images/prime.PNG"),
      text: "Deals");

  CircularImage adv7 = CircularImage(imageData:
  Image.asset("assets/images/prime.PNG"),
      text: "Deals");



  @override
  Widget build(BuildContext contextt) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF80d1d8),

        centerTitle: true,
        title:
         Column(


            children: [
              SizedBox(height: 7,),
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
        items:  [
          BottomNavigationBarItem(

              icon:

              Container(
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(
                      width: 5,
                      color:currentindex==0? Colors.green: Colors.white,
                    ))
                  ),
                  child: Icon(Icons.home)), label: ""),

          BottomNavigationBarItem(icon:
    Container(decoration: BoxDecoration(
    border: Border(top: BorderSide(
    width: 5,
    color:currentindex==1? Colors.green: Colors.white,
    ))
    ),child: Icon(Icons.person)), label: ""),


          BottomNavigationBarItem(icon: Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(
                    width: 5,
                    color:currentindex==2? Colors.green: Colors.white,
                  ))
              ),
              child: Icon(Icons.shopping_cart)), label: ""),
          BottomNavigationBarItem(icon: Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(
                    width: 5,
                    color:currentindex==3? Colors.green: Colors.white,
                  ))
              ),
              child: Icon(Icons.menu)), label: ""),
        ],
      ),


      body:



        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height:45 ,
                //color: Color.fromRGBO(197, 239, 229,1),
                color: Color(0xFFc4ede5),
                child:
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [

                    SizedBox(width: 10,),
                    Icon(Icons.add_location_outlined),
                    Text("Deliver to Hassan- Mallawi",
                      style: TextStyle(fontSize: 10,
                          color: Colors.black54),),
                  ],
                ),



              ),
              Column(
                children: [



                 const SizedBox(height: 20,),

                 SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(


                      children:
                       [

                        SizedBox(width: 10,),




                        circleLogoData(logoImage: adv1.imageData,logoText:adv1.text),
                         circleLogoData(logoText: adv2.text, logoImage: adv2.imageData),
                         circleLogoData(logoText: adv3.text, logoImage: adv3.imageData),
                         circleLogoData(logoText: adv4.text, logoImage: adv4.imageData),
                         circleLogoData(logoText: adv5.text, logoImage: adv5.imageData),
                         circleLogoData(logoText: adv2.text, logoImage: adv2.imageData),
                         circleLogoData(logoText: adv6.text, logoImage: adv2.imageData),
                         circleLogoData(logoText: adv7.text, logoImage: adv2.imageData),





                       ]
                    ),
                  ),


                  CarouselSlider(

                    items: [

                      imageScroll(advImage: Icons.star,advColor: Colors.cyan,onTapGesture:
                          (){
                        print("first discount");

                        Navigator.push(contextt,
                          MaterialPageRoute(builder: (BuildContext context){
                            return FirstDiscount();


                          }),
                        );

                      }),
                      imageScroll(advImage: Icons.circle,advColor: Colors.tealAccent,
                          onTapGesture:(){
                        Navigator.push( contextt,
                            MaterialPageRoute(builder:(contextt){
                              return SecondDiscount();

                            }


                            ),

                        );

                          }

                      ),
                      imageScroll(advImage: Icons.circle,advColor: Colors.teal),
                      imageScroll(advImage: Icons.shop,advColor: Colors.yellow,),
                      imageScroll(advImage: Icons.print,advColor: Colors.deepPurpleAccent),

                    ], options: CarouselOptions(

                    //autoPlay: true,
                    pauseAutoPlayInFiniteScroll: true,
                    viewportFraction: 1,
                    //clipBehavior: Clip.none,

                    autoPlayAnimationDuration:const Duration(milliseconds: 80),
                    autoPlayCurve: Curves.linear,
                    autoPlayInterval: const Duration(seconds: 6),

  ),

                  ),



                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row( children:[

                    imageScroll(
                        advmargin: true,
                        advMarginDouble: 10,
                        advImage: Icons.equalizer,
                        advColor: Colors.blue,
                        advHeight: 200,
                        advWidth: 150),

                      imageScroll(
                          advmargin: true,
                          advMarginDouble: 10,
                          advImage: Icons.equalizer,
                          advColor: Colors.cyanAccent,
                          advHeight: 200,
                          advWidth: 150),
                      imageScroll(
                          advmargin: true,
                          advMarginDouble: 10,
                          advImage: Icons.equalizer,
                          advColor: Colors.green,
                          advHeight: 200,
                          advWidth: 150),

                      imageScroll(
                          advmargin: true,
                          advMarginDouble: 10,
                          advImage: Icons.equalizer,
                          advColor: Colors.green,
                          advHeight: 200,
                          advWidth: 150),

                      imageScroll(
                          advmargin: true,
                          advMarginDouble: 10,
                          advImage: Icons.equalizer,
                          advColor: Colors.cyan,
                          advHeight: 200,
                          advWidth: 150),
                      imageScroll(
                          advmargin: true,
                          advMarginDouble: 10,
                          advImage: Icons.equalizer,
                          advColor: Colors.amber,
                          advHeight: 200,
                          advWidth: 150),

],
                    ),
                  ),

                  textAmazon(textString: 'Get your discount enjoy 0% interest on installments*'
                 ,fontWeight: FontWeight.normal,
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

