import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/Function/crud_function.dart';
import 'package:flutter_widgets/Screen/firebase_data_retrieve.dart';

class DatabaseCrud extends StatefulWidget {
  const DatabaseCrud({super.key});

  @override
  State<DatabaseCrud> createState() => _DatabaseCrudState();
}

class _DatabaseCrudState extends State<DatabaseCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Database Crud Application"),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      create('pets', 'kitty', 'jerry', 'cat', 5);
                    },
                    child: const Text("Create"))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      update('pets', 'tom', 'age', 16);
                    },
                    child: const Text("Update"))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataRetrieve()));
                    },
                    child: const Text("Retrieve"))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      delete('pets', 'kitty');
                    },
                    child: const Text("Delete"))),
          ],
        ),
      ),
    );
  }
}
