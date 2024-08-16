import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Shoe Alert"),
        onPressed: () {
          _showDialog(context);
        },
      )),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text("This is an alert"),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [Text("This is an demo"), Text("This is Pratham ")],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Approve")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel")),
          ],
        );
      });
}
