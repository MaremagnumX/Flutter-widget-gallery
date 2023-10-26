import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
        titleTextStyle: TextStyle(
          color: colors.primary,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        iconTheme: IconThemeData(color: colors.primary),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(alignment: WrapAlignment.center, spacing: 10, children: [
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          const ElevatedButton(
              onPressed: null, child: Text('Elevated Disable')),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon')),
          FilledButton(onPressed: () {}, child: const Text('Filled')),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.local_activity),
            label: const Text('Filled icon'),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Outline')),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.line_axis),
              label: const Text('Outline icon')),
          TextButton(onPressed: () {}, child: const Text('Text')),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.text_fields),
              label: const Text('Text')),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.precision_manufacturing_sharp)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delivery_dining_outlined),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white))),
          const CustomButton(),
        ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mi botón',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
