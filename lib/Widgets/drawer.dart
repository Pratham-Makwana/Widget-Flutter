import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/001/131/187/large_2x/serious-man-portrait-real-people-high-definition-grey-background-photo.jpg'),
                      ),
                      SizedBox(width:10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('James',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text('abc@gmail.com')
                        ],

                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder,color: Colors.white,),
                title: Text("My File",style: TextStyle(color: Colors.white),),
              ),
              const ListTile(
                leading: Icon(Icons.group,color: Colors.white,),
                title: Text("Shared With Me",style: TextStyle(color: Colors.white),),
              ),
              const ListTile(
                leading: Icon(Icons.star,color: Colors.white,),
                title: Text("Starred",style: TextStyle(color: Colors.white),),
              ),
              const ListTile(
                leading: Icon(Icons.delete,color: Colors.white,),
                title: Text("Trash",style: TextStyle(color: Colors.white),),
              ),const ListTile(
                leading: Icon(Icons.upload,color: Colors.white,),
                title: Text("upload",style: TextStyle(color: Colors.white),),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share,color: Colors.white,),
                title: Text("Share",style: TextStyle(color: Colors.white),),
              ),const ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text("Log out",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer Widget"),
      ),
      body: Container(
        child: Center(child: const Text("Hey There")),
      ),
    );
  }
}
