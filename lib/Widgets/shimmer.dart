import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shimmer Effect Widget"),
      ),
      body: Center(
        child: Shimmer.fromColors(
          direction: ShimmerDirection.ttb,
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: const Text(
            "Pratham Makwana",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
