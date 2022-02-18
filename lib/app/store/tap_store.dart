import 'package:flutter/widgets.dart';

enum EnumAppTab { home, repository, dev }

extension EnumTabTitle on EnumAppTab {
  String get title {
    switch (this) {
      case EnumAppTab.home:
        return 'Atividades';
      case EnumAppTab.repository:
        return 'Repositórios';
      case EnumAppTab.dev:
        return 'Sobre o Dev';
    }
  }
}

class TabStore extends ValueNotifier<EnumAppTab> {
  TabStore() : super(EnumAppTab.home);
  void changeTab(EnumAppTab value) {
    this.value = value;
  }
}
