import 'package:flutter/material.dart';
import '../../shared/widgets/activities_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final activities = [
    {
      'urlImage': 'assets/icons/Icon material-toys.png',
      'title': 'Playground',
      'exerciseLength': '1',
      'description': 'Ambiente destinado a testes e estudo em geral',
      'route': '/exercicioPlayground',
      'url': ''
    },
    {
      'urlImage': 'assets/icons/Icon awesome-glasses.png',
      'title': 'Leitura de Mockup',
      'exerciseLength': '2',
      'description':
          'Aplicação da técnica de leitura de Mockup, contendo 2 exercícios',
      'route': '/exercicioMockup',
      'url': 'https://github.com/VitiNho-Dev/Leitura-de-Mockup-Tinder'
    },
    {
      'urlImage': 'assets/icons/Icon awesome-running.png',
      'title': 'Animações',
      'exerciseLength': '4',
      'description':
          'Estudo sobre animações implícitas e controladas, contendo 4 exercícios',
      'route': '/exercicioAnimacoes',
      'url': 'https://github.com/VitiNho-Dev/Animacoes'
    },
    {
      'urlImage': 'assets/icons/Icon blockchain.png',
      'title': 'Design Patterns',
      'exerciseLength': '1',
      'description':
          'Estudo de alguns Design Patterns como MVC e MVVM, contendo 1 exercício utilizando o MVC',
      'route': '/exerciciodp',
      'url': 'https://github.com/VitiNho-Dev/Design-Pattern-App-IMC'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index];
        return ActivitiesCard(
          urlImage: activity['urlImage']!,
          title: activity['title']!,
          numberExercicio: activity['exerciseLength']!,
          description: activity['description']!,
          route: activity['route']!,
          url: activity['url']!,
        );
      },
    );
  }
}
