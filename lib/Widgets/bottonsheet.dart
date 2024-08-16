import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
              elevation: 0,
              // isDismissible: false,
              //enableDrag: false,
              backgroundColor: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
              context: context,
              builder: (context) {
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("I Like Orange"),
                    ),
                    ListTile(
                      title: Text("Graps"),
                      subtitle: Text("I Like Graps"),
                    ),
                    ListTile(
                      title: Text("Apple"),
                      subtitle: Text("I Like Apple"),
                    ),
                    ListTile(
                      title: Text("Mango"),
                      subtitle: Text("I Like Mango"),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
