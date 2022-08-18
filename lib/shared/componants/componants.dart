

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
  required IconData logoImage,

}

)=>
 Row(
   children: [
     Column(

     children:[
     CircleAvatar(
       radius: 50,
     child: Icon(logoImage),
     ),
       SizedBox(height: 8,),
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



}
)
{
  return GestureDetector(
    onTap: onTapGesture,


    child: Container(
      color: advColor,
      width: 400,
      height: 250,
      child:
        Icon(advImage),




    ),
  );

}





