import 'dart:html';

import 'package:contador/view/widgets/alerta.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    final controllerName = TextEditingController();
    final controllerEmail = TextEditingController();
    final controllerBirth = TextEditingController();
    final controllerPhone = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        backgroundColor: Colors.red,
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Cadastre-se ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: 'no nosso contador',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ),
            const Spacer(),
            Form(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerName,
                      decoration: InputDecoration(
                        labelText: 'Nome',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerEmail,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else if (value.length < 3 || value.isEmpty) {
                          return 'Verifiue se digitou corretamente';
                        } else {
                          return 'Campo Obrigatório';
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerBirth,
                      decoration: InputDecoration(
                        labelText: 'Nascimento',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerPhone,
                      decoration: InputDecoration(
                        labelText: 'Telefone',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              /*valor maximo para colocar na tela por ele ser um valor double*/
              child: FilledButton(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Alerta(
                        controllerName: controllerName,
                        controllerEmail: controllerEmail,
                        controllerBirth: controllerBirth,
                        controllerPhone: controllerPhone,
                      );
                    },
                  );
                },
                child: const Text('Enviar'),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
