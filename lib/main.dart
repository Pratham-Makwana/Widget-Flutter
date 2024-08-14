import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/button.dart';
import 'package:flutter_widgets/Widgets/container_sized.dart';
import 'package:flutter_widgets/Widgets/list_grid.dart';
import 'package:flutter_widgets/Widgets/rowcols.dart';
import 'package:flutter_widgets/Widgets/snackbar.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.deepPurple),
        primaryColor: Colors.deepPurple
      ),

      home: const SnackBarWidget(),
    );
  }
}
