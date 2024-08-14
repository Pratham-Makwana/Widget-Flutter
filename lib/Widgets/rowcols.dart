import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Cols"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 60, width: 60, color: Colors.red),
            Container(height: 60, width: 60, color: Colors.blue),
            Container(height: 60, width: 60, color: Colors.grey),
            Container(height: 60, width: 60, color: Colors.green),
          ],
        )
            // Wrap(
            //     direction: Axis.vertical,
            //     alignment: WrapAlignment.start,
            //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //     Container(
            //     height: 60,
            //     width: 60,
            //     color: Colors.red
            // ),
            // Container(
            //     height: 60,
            //     width: 60,
            //     color: Colors.blue
            // ),
            // Container(
            //     height: 60,
            //     width: 60,
            //     color: Colors.grey
            // ),
            // Container(
            //     height: 60,
            //     width: 60,
            //     color: Colors.green
            // ),
        //     Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(height: 60, width: 60, color: Colors.red),
        //     Container(height: 60, width: 60, color: Colors.blue),
        //     Container(height: 60, width: 60, color: Colors.grey),
        //     Container(height: 60, width: 60, color: Colors.green),
        //   ],
        // ),
      ),
    );
  }
}
