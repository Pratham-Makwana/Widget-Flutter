import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/content.dart';
import 'package:flutter_widgets/utills/colors.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
        margin: const EdgeInsets.all(15),
        height: 250,
        width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadow
          ),

          child: const Content(),
        ),
      ),
    );
  }
}
