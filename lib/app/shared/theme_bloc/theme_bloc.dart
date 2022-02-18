import 'package:appmasterclass/app/shared/theme_bloc/event_theme.dart';
import 'package:appmasterclass/app/shared/theme_bloc/state_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<EventTheme, StateTheme> {
  ThemeBloc() : super(const LightStateTheme()) {
    on<SwitchToLightTheme>((event, emit) {
      emit(const LightStateTheme());
    });
    on<SwitchToDarkTheme>((event, emit) {
      emit(const DarkStateTheme());
    });
    on<SwitchToSystemTheme>((event, emit) {
      emit(const SystemStateTheme());
    });
  }
}
