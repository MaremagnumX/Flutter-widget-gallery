import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
        titleTextStyle: TextStyle(
            color: colors.primary, fontSize: 22, fontWeight: FontWeight.w500),
        iconTheme: IconThemeData(color: colors.primary),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.black12,
            ),
            SizedBox(height: 10),
            Text('Circular progress indicator'),
            SizedBox(height: 20),
            _ControlledProgressIndicator(),
            SizedBox(height: 10),
            Text('Progress indicator controlado'),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 100), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                  value: progressValue,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            ),
          );
        });
  }
}
