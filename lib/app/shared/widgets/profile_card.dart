import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Container(
            height: 116,
            width: 116,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/62801306?v=4',
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Victor Henrique',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Flutter Developer at Fteam!',
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.phone,
                color: Theme.of(context).primaryIconTheme.color,
              ),
              Icon(
                Icons.alternate_email,
                color: Theme.of(context).primaryIconTheme.color,
              ),
              Icon(
                Icons.add,
                color: Theme.of(context).primaryIconTheme.color,
              ),
              Icon(
                Icons.facebook,
                color: Theme.of(context).primaryIconTheme.color,
              ),
            ],
          ),
          SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }
}
