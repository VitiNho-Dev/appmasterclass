import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActivitiesCard extends StatelessWidget {
  final String urlImage;
  final String title;
  final String numberExercicio;
  final String description;
  final String route;
  final String url;

  const ActivitiesCard({
    Key? key,
    required this.urlImage,
    required this.title,
    required this.numberExercicio,
    required this.description,
    required this.route,
    required this.url,
  }) : super(key: key);

  void _openURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Image.asset(
                    urlImage,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Text(
                  'Exercícios',
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(width: 11),
                Text(
                  numberExercicio,
                  style: Theme.of(context).textTheme.overline,
                ),
              ],
            ),
            SizedBox(height: 35),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  icon: Image.asset(
                    'assets/icons/Icon awesome-github.png',
                    height: 20,
                    width: 20,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                  label: Text(
                    'Acessar código fonte',
                  ),
                  onPressed: _openURL,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, route);
                  },
                  child: Text('Ver mais'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
