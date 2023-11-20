import 'package:flutter/material.dart';
import 'tela_contatos.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Contato'), backgroundColor: const Color.fromARGB(255, 86, 91, 133)
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 134, 95, 160), 
              Color.fromARGB(255, 100, 70, 182)], 
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(labelText: 'Nome'), 
                style: const TextStyle(fontSize: 20),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
                style: const TextStyle(fontSize: 20),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: telefoneController,
                decoration: const InputDecoration(labelText: 'Telefone'),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Contato novoContato = Contato(
                    nome: nomeController.text,
                    email: emailController.text,
                    telefone: telefoneController.text,
                  );

                  nomeController.clear();
                  emailController.clear();
                  telefoneController.clear();

                  TelaContatos.contatos.add(novoContato);

                  Navigator.pushReplacementNamed(context, '/contatos');
                },
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, 
                ),
                child: const Text('Salvar Contato'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
