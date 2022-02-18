import 'package:flutter/material.dart';

class AbilityCard extends StatelessWidget {
  const AbilityCard({
    Key? key,
    required this.title,
    required this.valueAbility,
  }) : super(key: key);

  final String title;
  final double valueAbility;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Text(title),
        ),
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Container(
                height: 8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              Container(
                height: 8,
                width: valueAbility,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
