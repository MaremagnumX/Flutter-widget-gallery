import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  Color color = const Color.fromARGB(255, 152, 34, 200);
  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 400);
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
          curve: Curves.easeInOutCubic,
          width: 200,
          height: 500,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          duration: duration,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            color = const Color.fromARGB(255, 216, 204, 40);
          });
        },
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
