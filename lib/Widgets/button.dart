import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                    overlayColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () {},
                child: const Text(
                  "Press me",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ))


                ),

                  onPressed: () {},
                  child: const Text(
                    "Press me",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
