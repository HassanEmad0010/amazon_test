import 'package:amazon_test/models/Big_Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amazon_test/models/Circualer_Image.dart';

import '../../models/Triangle_Image.dart';

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

Widget circleLogoData({
  required CircularImage incomingModel,
}) =>
    Row(
      children: [
        Column(children: [
          //code that has potential to throw an exception

          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: incomingModel.imageData,
          ),
          Text(
            incomingModel.text,
            style: const TextStyle(fontSize: 15),
          ),
        ]),
        const SizedBox(
          width: 13,
        ),
      ],
    );

Widget triangleImage({
  required TriangleImage TriangleImageModel,
}) =>
    Container(
      color: Colors.white,
      child: TriangleImageModel.imageData,
    );

Widget imageScroll({
  // required advName,
//  required advDiscount,
  required BigImage bigImageModel,
  Function()? onTapGesture,
  double advWidth = 400,
  double advHeight = 250,
  bool advmargin = false,
  double advMarginDouble = 2,
}) {
  return GestureDetector(
    onTap: onTapGesture,
    child: Container(
      decoration: BoxDecoration(
        //color: advColor,
        borderRadius: advmargin ? BorderRadius.circular(10) : null,
      ),
      margin: advmargin ? EdgeInsets.all(advMarginDouble) : null,
      width: advWidth,
      height: advHeight,
      child: bigImageModel.imageData,
    ),
  );
}

Widget textAmazon({
  required String textString,
  double textSize = 16,
  FontWeight fontWeight = FontWeight.bold,
  Color textColor = Colors.black,
}) {
  return Container(
    margin: const EdgeInsets.only(left: 20),
    child: Text(
      textString,
      style: TextStyle(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: textSize,
      ),
      maxLines: 2,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
    ),
  );
}
