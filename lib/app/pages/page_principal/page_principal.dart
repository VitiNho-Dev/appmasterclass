import 'package:appmasterclass/app/pages/home_page/home_page.dart';
import 'package:appmasterclass/app/pages/sobre_o_dev_page.dart/sobre_o_dev_page.dart';
import 'package:appmasterclass/app/shared/widgets/custom_appbar.dart';
import 'package:appmasterclass/app/shared/widgets/custom_bottom_navigator.dart';
import 'package:appmasterclass/app/store/tap_store.dart';
import 'package:flutter/material.dart';

class PagePrincipal extends StatefulWidget {
  const PagePrincipal({Key? key}) : super(key: key);

  @override
  _PagePrincipalState createState() => _PagePrincipalState();
}

class _PagePrincipalState extends State<PagePrincipal> {
  @override
  void dispose() {
    tabStore.dispose();
    controller.dispose();
    super.dispose();
  }

  final PageController controller = PageController(initialPage: 0);

  final TabStore tabStore = TabStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: ValueListenableBuilder(
          valueListenable: tabStore,
          builder: (_, EnumAppTab tab, __) {
            return CustomAppBar(
              title: tab.title,
              imageUrl: 'assets/images/logo.png',
            );
          },
        ),
      ),
      body: PageView(
        onPageChanged: (index) {
          final value = EnumAppTab.values[index];
          tabStore.changeTab(value);
        },
        controller: controller,
        children: const [
          HomePage(),
          Text('Repository'),
          SobreODevPage(),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: tabStore,
        builder: (_, EnumAppTab tab, __) {
          return CustomBottomNavigator(
            selected: tabStore.value,
            onTap: (i) {
              controller.animateToPage(
                i,
                duration: Duration(seconds: 1),
                curve: Curves.ease,
              );
            },
          );
        },
      ),
    );
  }
}
