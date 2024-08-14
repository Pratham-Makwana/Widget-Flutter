import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Widget"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 300,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: () {
              final snackbar = SnackBar(
                action: SnackBarAction(label: "undo", onPressed: () {},backgroundColor: Colors.black,),
                content: const Text("This is SanckBar Demo"),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                duration: const Duration(milliseconds: 3000),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: const Text(
              "show snackBar",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
