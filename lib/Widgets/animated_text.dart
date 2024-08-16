import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedTextWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Pratham Makwana',
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: false,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("hello world",
                  textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
            ])
          ],
        ),
      ),
    );
  }
}
