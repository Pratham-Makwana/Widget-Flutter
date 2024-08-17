import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenUI extends StatefulWidget {
  const ScreenUI({super.key});

  @override
  State<ScreenUI> createState() => _ScreenUIState();
}

class _ScreenUIState extends State<ScreenUI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 500,
                      //color: Colors.deepPurple,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              height: 450,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://imgs.search.brave.com/gdO_Rnu5GXoiFSePSLjpV5jP8HwF4_xY3QCMzuWTINI/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YmVmdW5reS5jb20v/aW1hZ2VzL3ByaXNt/aWMvOTI0ZjU1ZWMt/ODZhYS00NzY3LWJj/OTAtYTU3NjRlMWY5/MTUwX2xhbmRpbmct/cGhvdG8tdG8tY2Fy/dG9vbi1pbWcyLmpw/ZWc_YXV0bz1hdmlm/LHdlYnAmZm9ybWF0/PWpwZyZ3aWR0aD04/NjM'),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 25,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://imgs.search.brave.com/RyLz7AuK8joc14ADe9BX_Sd0ruNzNxXD7Aej80i3kbY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9wZXJzb24td2Vh/cmluZy1kaXN0aW5j/dGl2ZS1yZWQtaGF0/LWdsYXNzZXMtc3Vp/dGFibGUtZWRpdG9y/aWFsLWNvbW1lcmNp/YWwtdXNlXzEyNTQ4/NzgtNDcwNDkuanBn/P3NpemU9NjI2JmV4/dD1qcGc'),
                              radius: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Madrin City Tour For The Designer",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "This is a random description of the topic",
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade900),
                      ),
                    ],
                  )),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowIconText('20', Icons.favorite_rounded),
                    rowIconText('34', Icons.upload),
                    rowIconText('82', Icons.message),
                    rowIconText('295', Icons.face),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                    " It has survived not only five centuries, but also the leap into electronic typesetting, "
                    "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing "
                    "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions "
                    "of Lorem Ipsum."),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
