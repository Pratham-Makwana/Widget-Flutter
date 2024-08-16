import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.yellow,
              ),
              Positioned(
                right: 10 ,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
