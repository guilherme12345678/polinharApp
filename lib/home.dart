import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
          padding: const EdgeInsets.all(25.0), 
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                const Text(''),
                const Text(''),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/cadastro');
                    },
                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.fromLTRB(100, 15, 100, 15), 
                    backgroundColor: const Color.fromARGB(255, 86, 91, 133)),
                    child: const Text('Novo Contato', style: TextStyle(fontSize: 19),),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contatos');
                    },
                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.fromLTRB(100, 15, 100, 15), 
                    backgroundColor: const Color.fromARGB(255, 86, 91, 133)),
                    child: const Text('Contatos', style: TextStyle(fontSize: 19),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
