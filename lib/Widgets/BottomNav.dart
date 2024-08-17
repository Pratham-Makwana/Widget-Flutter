import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/alert.dart';
import 'package:flutter_widgets/Widgets/dismissible.dart';
import 'package:flutter_widgets/Widgets/rowcols.dart';
import 'package:flutter_widgets/Widgets/snackbar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  PageController pageController =   PageController();
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Store'),
  //   Text('Search'),
  //   Text('Add')
  // ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Bottom-Nav Widget"),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissibleWidget(),
          SnackBarWidget(),
          RowsCols(),
        ],
      ),
      //body: Center(child: widgets.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add')
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: onTapped,
      ),
    );
  }
}
