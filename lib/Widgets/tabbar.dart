import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar Widget"),
          bottom: const TabBar(
              tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'Chat',
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: 'Status',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'Call',
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                "CHAT",
                style: TextStyle(fontSize: 30),
              ),
            ), Center(
              child: Text(
                "STATUS",
                style: TextStyle(fontSize: 30),
              ),
            ), Center(
              child: Text(
                "CALL",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
