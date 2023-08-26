import 'package:flutter/material.dart';

class Alerta extends StatefulWidget {
  final TextEditingController controllerName;
  final TextEditingController controllerEmail;
  final TextEditingController controllerBirth;
  final TextEditingController controllerPhone;

  const Alerta({
    super.key,
    required this.controllerName,
    required this.controllerEmail,
    required this.controllerBirth,
    required this.controllerPhone,
  });

  @override
  State<Alerta> createState() => _AlertaState();
}

class _AlertaState extends State<Alerta> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Alerta'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.controllerName.text),
          Text(widget.controllerEmail.text),
          Text(widget.controllerBirth.text),
          Text(widget.controllerPhone.text),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            widget.controllerName.text = ' ';
            widget.controllerEmail.text = ' ';
            widget.controllerBirth.text = ' ';
            widget.controllerPhone.text = ' ';

            Navigator.pop(context);
          },
          style: FilledButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
