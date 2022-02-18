import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_animacoes/animacoes_controladas/exercicio_03.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_animacoes/animacoes_controladas/exercicio_04.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_animacoes/animacoes_implicitas/exercicio_01.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_animacoes/animacoes_implicitas/exercicio_02.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_animacoes/exercicio_animacoes_page.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_design_patterns/exercicio_app_imc/home_mvc/imc_page.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_design_patterns/exercicio_design_pattern_page.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_mockup/exercicio_mockup_page.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_mockup/exercicio_tinder/tinder_page.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_playground/exercicio_playground_page.dart';
import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_playground/my_app/my_app.dart';
import 'package:appmasterclass/app/pages/page_principal/page_principal.dart';
import 'package:appmasterclass/app/pages/splashScreen/spash_screen.dart';
import 'package:appmasterclass/app/shared/theme/dark_theme.dart';
import 'package:appmasterclass/app/shared/theme/light_theme.dart';
import 'package:appmasterclass/app/shared/theme_bloc/state_theme.dart';
import 'package:appmasterclass/app/shared/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, StateTheme>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state.themeMode,
            initialRoute: '/splash',
            routes: {
              '/splash': (_) => const SplashScreen(),
              '/home': (_) => const PagePrincipal(),
              '/exercicioAnimacoes': (_) => const ExercicioAnimacoesPage(),
              '/exercicioMockup': (_) => const ExercicioMockupPage(),
              '/exercicioPlayground': (_) => const ExercicioPlaygroundPage(),
              '/tinderPage': (_) => const TinderPage(),
              '/exercicio1': (_) => const Exercicio1(),
              '/exercicio2': (_) => const Exercicio2(),
              '/exercicio3': (_) => const Exercicio3(),
              '/exercicio4': (_) => const Exercicio4(),
              '/myfirstapp': (_) => const MyFirstApp(),
              '/exerciciodp': (_) => const ExercicioDesignPatternPage(),
              '/imcApp': (_) => const ImcPage(),
            },
          );
        },
      ),
    );
  }
}
