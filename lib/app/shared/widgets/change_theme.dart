import 'package:appmasterclass/app/shared/theme_bloc/event_theme.dart';
import 'package:appmasterclass/app/shared/theme_bloc/state_theme.dart';
import 'package:appmasterclass/app/shared/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<ThemeBloc>();
    return IconButton(
      icon: Icon(
          bloc.state is DarkStateTheme ? Icons.mode_night : Icons.light_mode),
      color: Theme.of(context).hintColor,
      onPressed: () {
        if (bloc.state is DarkStateTheme) {
          bloc.add(SwitchToLightTheme());
        }
        if (bloc.state is LightStateTheme) {
          bloc.add(SwitchToDarkTheme());
        }
      },
    );
  }
}
