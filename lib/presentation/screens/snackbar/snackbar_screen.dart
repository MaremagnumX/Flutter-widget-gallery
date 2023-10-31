import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hello'),
      action: SnackBarAction(label: "Action", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("¿Estas seguro?"),
              content: const Text(
                  'Excepteur esse adipisicing consequat labore exercitation. Commodo non aliquip tempor velit excepteur proident Lorem minim labore irure cillum adipisicing ad do. Occaecat ipsum adipisicing et exercitation adipisicing. Quis do elit deserunt est eu occaecat eu dolor do irure non laborum. Sint magna ipsum fugiat consequat nulla eu consequat nulla.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sanackbar y Dialogos'),
        titleTextStyle: TextStyle(
            color: colors.primary, fontSize: 22, fontWeight: FontWeight.w500),
        iconTheme: IconThemeData(color: colors.primary),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Fugiat adipisicing velit tempor cupidatat ipsum. Cillum adipisicing aliquip proident eu quis. Ex mollit officia quis anim qui excepteur cupidatat dolor exercitation laboris reprehenderit. Aliquip sunt laborum irure id qui aliquip. Eiusmod enim commodo irure sint non proident.')
                  ]);
                },
                child: const Text('Licencias usadas'),
              ),
              FilledButton(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Mostrar dialogo'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Sanckbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
