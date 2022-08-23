

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textFormField({
  //required TextEditingController textEditingController,
  TextInputType textInputType = TextInputType.emailAddress,
  bool isPassword = false,
  String formFieldText = "Your Email",
  // required String? Function(dynamic value) validator,

  Function()? suffixFunction,
  Icon? iconPrefix,
  IconData? iconSuffix,
}) =>
    Container(
      color: Colors.white,
      width: double.infinity,
      height: 80,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefix: iconPrefix,
          suffix: IconButton(onPressed: suffixFunction, icon: Icon(iconSuffix)),
          labelText: formFieldText,
          fillColor: Colors.black,
          //floatingLabelAlignment: FloatingLabelAlignment.center,
        ),

        // controller: textEditingController,

        keyboardType: textInputType,

        obscureText: isPassword,

        // validator: validator,
      ),
    );

















Widget circleLogoData (
{
 required String logoText,
   required Image logoImage,

}

)=>

 Row(
   children: [



     Column(

     children:[

     //code that has potential to throw an exception

     CircleAvatar(
       backgroundColor: Colors.white,
       radius: 40,
     child:
     logoImage,
     ),
       Text(logoText,style: TextStyle(fontSize: 15),),
       ]
     ),
     const SizedBox(width: 13,),

   ],
 );




Widget imageScroll ({
 // required advName,
//  required advDiscount,
 Function()? onTapGesture,
  required IconData advImage,
  required Color advColor,
  double advWidth=400,
  double advHeight= 250,
  bool advmargin = false,
  double advMarginDouble=2,
}
)
{
  return GestureDetector(
    onTap: onTapGesture,


    child: Container(

      decoration:BoxDecoration(
        color: advColor,
        borderRadius: advmargin? BorderRadius.circular(10):null,



      ) ,

      margin:advmargin? EdgeInsets.all(advMarginDouble) :null  ,


      width: advWidth,
      height: advHeight,
      child:
        Icon(advImage),




    ),
  );

}

Widget textAmazon (
{
  required String textString ,
  double textSize= 16,
  FontWeight fontWeight=FontWeight.bold,
  Color textColor =Colors.black,

}
    )

{
  return Container(
    margin: EdgeInsets.only(left: 20),

    child: Text(
      textString,
      style: TextStyle(color:textColor,fontWeight: fontWeight,fontSize: textSize, ),
      maxLines: 2,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,



    ),

  );

}







