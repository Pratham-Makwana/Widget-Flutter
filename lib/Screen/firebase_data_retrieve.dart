import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataRetrieve extends StatefulWidget {
  const DataRetrieve({super.key});

  @override
  State<DataRetrieve> createState() => _DataRetrieveState();
}

class _DataRetrieveState extends State<DataRetrieve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Data Retrieve"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('pets').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final dataDoc = snapshot.data!.docs;
              return ListView.builder(
                  itemCount: dataDoc.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: ListTile(
                        title: Text(dataDoc[index]['name']),
                        subtitle: Text(dataDoc[index]['animal']),
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
