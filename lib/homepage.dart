import 'package:amazon_test/shared/componants/componants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

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
          SizedBox(
            height: 6,
          ),

          Container(
            width: double.infinity,
            height:30 ,
            color: Color.fromRGBO(197, 239, 229,1),
            child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(Icons.add_location_outlined),
                Text("Deliver to Hassan",
                  style: TextStyle(fontSize: 10,
                    color: Colors.black54),),
              ],
            ),



          ),
            ],
          ),


      ),

      body:

        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
             const SizedBox(height: 28,),

             SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(


                  children:
                  [
                    circleLogoData(logoImage: Icons.add,logoText: "Prime"),

                    circleLogoData(logoText: "Deals", logoImage: Icons.ac_unit_outlined),

                    circleLogoData(logoImage: Icons.add,logoText: "Prime"),
                    circleLogoData(logoText: "Deals", logoImage: Icons.ac_unit_outlined),

                    circleLogoData(logoText: "Deals", logoImage: Icons.ac_unit_outlined),

                    circleLogoData(logoText: "Deals", logoImage: Icons.ac_unit_outlined),
                    circleLogoData(logoText: "Deals", logoImage: Icons.ac_unit_outlined),





                  ]
                ),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    imageScroll(advImage: Icons.star,advColor: Colors.cyan),
                    imageScroll(advImage: Icons.circle,advColor: Colors.tealAccent),
                    imageScroll(advImage: Icons.circle,advColor: Colors.teal),
                    imageScroll(advImage: Icons.circle,advColor: Colors.yellow),
                    imageScroll(advImage: Icons.circle,advColor: Colors.deepPurpleAccent),

                  ],

                ),
              ),
              /////




            ],


          ),
        ),




    );
  }
}
















