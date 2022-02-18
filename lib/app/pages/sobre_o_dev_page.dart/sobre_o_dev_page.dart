import 'package:appmasterclass/app/shared/widgets/ability_card.dart';
import 'package:appmasterclass/app/shared/widgets/profile_card.dart';
import 'package:appmasterclass/app/shared/widgets/widget_favorite.dart';
import 'package:flutter/material.dart';

class SobreODevPage extends StatefulWidget {
  const SobreODevPage({Key? key}) : super(key: key);

  @override
  State<SobreODevPage> createState() => _SobreODevPageState();
}

class _SobreODevPageState extends State<SobreODevPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Tecnologias Favoritas',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  WidgetFavoritTecnologies(
                    title: 'Flutter',
                    urlImage: 'assets/icons/Icon simple-flutter.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Habilidades e Competências',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                children: const [
                  AbilityCard(
                    title: 'Flutter',
                    valueAbility: 140,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AbilityCard(
                    title: 'Dart',
                    valueAbility: 120,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AbilityCard(
                    title: 'Firebase',
                    valueAbility: 30,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AbilityCard(
                    title: 'Android',
                    valueAbility: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
