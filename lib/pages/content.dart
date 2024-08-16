import 'package:flutter/material.dart';
import 'package:flutter_widgets/utills/test.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
            ),
          ),
          Positioned(
            left: -200,
            bottom: -470,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
            ),
          ),
          Positioned(
            top: 25,
            left: 15,
            child: Container(
              height: 30,
              child: Image.asset("assets/visa.webp"),
            ),
          ),
          Positioned(
            top: 52,
            left: 25,
            child: ModifiedText(
                text: "it's where you want to be",
                color: Colors.grey.shade900,
                size: 14),
          ),
          Positioned(
            bottom: 30,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5678 4356 0126 7800",
                  style: GoogleFonts.sourceCodePro(
                      fontSize: 24,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Pratham Makwana",
                  style: GoogleFonts.sourceCodePro(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
              right: 15,
              child: Container(
            height: 80,
            child: Image.asset("assets/chip.jpeg"),
          ))
        ],
      ),
    );
  }
}
