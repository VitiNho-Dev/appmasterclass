import 'package:appmasterclass/app/shared/widgets/change_theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  String title;
  String? imageUrl;
  CustomAppBar({
    Key? key,
    required this.title,
    this.imageUrl,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(double.infinity, 80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          left: 14, top: size.height * 0.03, right: 14, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widget.imageUrl == null
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Theme.of(context).hintColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              : Image.asset(
                  'assets/images/logo.png',
                ),
          SizedBox(width: 4),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Flutterando Masterclass',
                  style: Theme.of(context).textTheme.overline,
                ),
              ],
            ),
          ),
          ChangeTheme(),
        ],
      ),
    );
  }
}
