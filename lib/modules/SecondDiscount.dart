import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondDiscount extends StatelessWidget {
  @override
  Widget build(BuildContext secondcontext) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: IconButton(
          icon: Icon(Icons.home, size: 40),
          onPressed: () {
            Navigator.pop(secondcontext);
          },
        ),
      ),

      body:

      Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.deepPurple,
          child: Center(
            child: const Text("Second Screen",style:
            TextStyle(fontSize: 25,color: Colors.white,),),
          ),

        ),
      ),

    );
  }
}
