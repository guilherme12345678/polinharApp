import 'package:flutter/material.dart';

class TelaContatos extends StatefulWidget {
  static List<Contato> contatos = [];

  const TelaContatos({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TelaContatosState createState() => _TelaContatosState();
}

class _TelaContatosState extends State<TelaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos'),
        backgroundColor: const Color.fromARGB(255, 86, 91, 133),
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
        child: ListView.builder(
          itemCount: TelaContatos.contatos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 117, 166, 240),
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                  child: Icon(Icons.person), 
                  ),
                  title: Text(TelaContatos.contatos[index].nome, 
                  style: const TextStyle(fontSize: 20, color: Colors.black),),
                  
                  subtitle: Text(
                    'E-mail: ${TelaContatos.contatos[index].email}\nTelefone: ${TelaContatos.contatos[index].telefone}', 
                    style: const TextStyle(fontSize: 18, color: Colors.black), 
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        TelaContatos.contatos.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Contato {
  String nome;
  String email;
  String telefone;

  Contato({required this.nome, required this.email, required this.telefone});
}
