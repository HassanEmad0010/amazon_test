import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstDiscount extends StatelessWidget {
  @override
  Widget build(BuildContext firstcontext) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: IconButton(
          icon: Icon(Icons.home, size: 40),
          onPressed: () {
            Navigator.pop(firstcontext);
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
              child: const Text("First Screen",style:
              TextStyle(fontSize: 30,color: Colors.white,),),
            ),

          ),
        ),

    );
  }
}
