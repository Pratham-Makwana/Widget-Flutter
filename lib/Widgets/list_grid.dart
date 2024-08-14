import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruit = ["mango", "orange ", "grapes", "Banana", "apple"];
  Map fruit_person = {
    'fruit': ["mango", "orange ", "grapes", "Banana", "apple"],
    'name': ["karan", "ayush", "yash", "Raj", "hello"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List And Grid",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruit.length,
        //   itemBuilder: ( context, int index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: (){
        //           print((fruit_person['fruit'][index]));
        //         },
        //         leading: const Icon(Icons.person),
        //         title: Text(fruit[index]),
        //         //subtitle: Text(fruit_person['name'][index]),
        //       ),
        //     );
        //   },
        // ),

        // child: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 25,
        //     childAspectRatio: 2 / 3
        //   ),
        //   children: [
        //     Card(
        //       child: Center(child: Text("Oragne")),
        //     ),
        //     Card(
        //       child: Center(child: Text("Oragne")),
        //     ),
        //     Card(
        //       child: Center(child: Text("Oragne")),
        //     ),
        //
        //   ],
        // ),

        child: GridView.builder(
          itemCount: fruit.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, int index) {
            return Card(
              child: Center(child: Text(fruit[index])),
            );
          },
        ),
      ),
    );
  }
}
