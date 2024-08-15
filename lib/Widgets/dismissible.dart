import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ["apple", "banana", "mango", "grapes"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissable Widget"),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, int index) {
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 2000),
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                  ),
                );
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 2500),
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                  ),
                );
              }

            },
            background: Container(color: Colors.green,),
            secondaryBackground: Container(color: Colors.red,),
            key: Key(fruit),
            child: Card(
              child: ListTile(
                title: Text(fruits[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
