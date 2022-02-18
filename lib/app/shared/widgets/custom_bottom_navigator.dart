import 'package:flutter/material.dart';

import 'package:appmasterclass/app/shared/widgets/custom_divider.dart';
import 'package:appmasterclass/app/store/tap_store.dart';

class CustomBottomNavigator extends StatefulWidget {
  final void Function(int) onTap;
  final EnumAppTab selected;

  const CustomBottomNavigator({
    Key? key,
    required this.onTap,
    required this.selected,
  }) : super(key: key);

  @override
  State<CustomBottomNavigator> createState() => _CustomBottomNavigatorState();
}

class _CustomBottomNavigatorState extends State<CustomBottomNavigator> {
  void _onTap(int value) {
    widget.onTap(value);
  }

  var isSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 59,
                height: 32,
                decoration: BoxDecoration(
                  color: widget.selected == EnumAppTab.home
                      ? Theme.of(context).cardColor
                      : Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: IconButton(
                  onPressed: () {
                    _onTap(0);
                  },
                  padding: EdgeInsets.zero,
                  icon: Image.asset(
                    'assets/icons/Icon feather-target.png',
                    height: 24,
                    width: 24,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                ),
              ),
              Text(
                'Atividades',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
          CustomDivider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 59,
                height: 32,
                decoration: BoxDecoration(
                  color: widget.selected == EnumAppTab.repository
                      ? Theme.of(context).cardColor
                      : Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: IconButton(
                  onPressed: () {
                    _onTap(1);
                  },
                  padding: EdgeInsets.zero,
                  icon: Image.asset(
                    'assets/icons/Icon awesome-github.png',
                    height: 24,
                    width: 24,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                ),
              ),
              Text(
                'Repositórios',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
          CustomDivider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 59,
                height: 32,
                decoration: BoxDecoration(
                  color: widget.selected == EnumAppTab.dev
                      ? Theme.of(context).cardColor
                      : Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: IconButton(
                  onPressed: () {
                    _onTap(2);
                  },
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.person,
                    size: 28,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                ),
              ),
              Text(
                'Sobre o Dev',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
