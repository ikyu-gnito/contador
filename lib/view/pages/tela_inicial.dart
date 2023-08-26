import 'package:contador/view/pages/cadastro.dart';
import 'package:contador/view/pages/nova_tela.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<StatefulWidget> createState() => _TelaState();
}

class _TelaState extends State<TelaInicial> {
  int number = 0;

  void increment() {
    setState(() {
      number++;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                    )
                    
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const Novatela(),
                      ),
                    );
                  },
                  child: const Text('Nova página', style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 8,),
               SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                    )
                    
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const Cadastro(),
                      ),
                    );
                  },
                  child: const Text('Cadastrar-se', style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.widgets_outlined),
            );
          },
        ),
        backgroundColor: Colors.red,
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 45,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    side: const BorderSide(width: 2, color: Colors.red),
                  ),
                  onPressed: reset,
                  child: const Text(
                    'Zerar',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  '$number',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add_rounded,
          size: 40,
        ),
      ),
    );
  }
}
