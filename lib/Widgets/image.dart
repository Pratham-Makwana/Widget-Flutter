import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: Center(
        child: Container(
          height: 320,
          width: 250,

          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black,
                spreadRadius: 5.0
              ),
            ],
              color: Colors.red,
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://imgs.search.brave.com/dHWYaa0oVX_q5zKSNMeRP8RVIMQQ5Z7j0d8-1sBuBgY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvZG9y/YWVtb24tcGljdHVy/ZXMtdGYxbjJtMm9s/eHRpenQzNS5qcGc'),
                  fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
