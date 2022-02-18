import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({Key? key}) : super(key: key);

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {
  bool _isValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão Flutuante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedAlign(
          duration: const Duration(seconds: 1),
          alignment: _isValue ? Alignment.topCenter : Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isValue = !_isValue;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: _isValue ? 100 : 50,
              height: _isValue ? 50 : 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: _isValue ? null : BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
