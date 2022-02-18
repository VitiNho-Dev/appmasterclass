import 'package:appmasterclass/app/shared/widgets/custom_appbar.dart';
import 'package:appmasterclass/app/shared/widgets/custom_card_exercicios.dart';
import 'package:flutter/material.dart';

class ExercicioAnimacoesPage extends StatelessWidget {
  const ExercicioAnimacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Animações'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: const [
            CardExercicios(
              numberText: '1',
              exercicioText: 'Exercício 01',
              route: '/exercicio1',
            ),
            CardExercicios(
              numberText: '2',
              exercicioText: 'Exercício 02',
              route: '/exercicio2',
            ),
            CardExercicios(
              numberText: '3',
              exercicioText: 'Exercício 03',
              route: '/exercicio3',
            ),
            CardExercicios(
              numberText: '4',
              exercicioText: 'Exercício 04',
              route: '/exercicio4',
            ),
          ],
        ),
      ),
    );
  }
}
