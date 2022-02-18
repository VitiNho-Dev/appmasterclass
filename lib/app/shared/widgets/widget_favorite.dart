import 'package:flutter/material.dart';

class WidgetFavoritTecnologies extends StatelessWidget {
  final String title;
  final String urlImage;
  const WidgetFavoritTecnologies({
    Key? key,
    required this.title,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 27, vertical: 13),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          children: [
            Image.asset(
              urlImage,
              width: 38,
              height: 48,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        ),
      ),
    );
  }
}
