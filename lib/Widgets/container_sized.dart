import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container and SizedBox"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.red,
          //  borderRadius: BorderRadius.circular(10),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 10,
                blurRadius: 20,
              )
            ]
            // shape: BoxShape.circle
          ),
          child: Center(
              child: Container(
                //margin: EdgeInsets.all(10),
                color: Colors.blue,
              //Text("hello", style: TextStyle(fontSize: 20),
          )),
        ),
      ),
    );
  }
}
