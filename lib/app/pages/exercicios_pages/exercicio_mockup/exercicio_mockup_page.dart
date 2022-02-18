import 'package:appmasterclass/app/shared/widgets/custom_appbar.dart';
import 'package:appmasterclass/app/shared/widgets/custom_card_exercicios.dart';
import 'package:flutter/material.dart';

class ExercicioMockupPage extends StatelessWidget {
  const ExercicioMockupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Leitura de Mockup'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: const [
            CardExercicios(
              numberText: '1',
              exercicioText: 'Exercício 01',
              route: '/tinderPage',
            ),
          ],
        ),
      ),
    );
  }
}
