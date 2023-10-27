import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 120;
  double height = 120;
  double borderRadius = 10.0;
  Color color = const Color.fromARGB(255, 152, 34, 200);

  changeShape() {
    final random = Random();

    width = random.nextInt(300) + 50;
    height = random.nextInt(300) + 50;
    borderRadius = random.nextInt(100) + 20;
    color = Color.fromARGB(random.nextInt(255) + 200, random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 500);
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        titleTextStyle: TextStyle(
            color: colors.primary, fontSize: 22, fontWeight: FontWeight.w500),
        iconTheme: IconThemeData(color: colors.primary),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.elasticInOut,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius),
          ),
          duration: duration,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
