import 'package:flutter/material.dart';

class Novatela extends StatelessWidget {
  const Novatela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
            );
          },
        ),
        backgroundColor: Colors.red,
        title: const Text('Nova Página'),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Eu sou uma nova página", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500))
          ],
        ),
    );
  }
}
