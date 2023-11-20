//Alunos: Paula Melissa Ribeiro Moura e Eric da Silva Vieira
// 2ºinformática matutino

import 'package:flutter/material.dart';
import 'tela_cadastro.dart';
import 'tela_contatos.dart';
import 'home.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/'        : (context) => const  TelaInicial(),
        '/contatos': (context) => const TelaContatos(),
        '/cadastro': (context) => const TelaCadastro(),
      },
    );
  }
}
