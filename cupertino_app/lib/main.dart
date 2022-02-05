import 'package:cupertino_app/searchs_page.dart';
import 'package:cupertino_app/settings_page.dart';
import 'package:flutter/cupertino.dart';

import 'feeds_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(primaryColor: CupertinoColors.systemOrange),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.news), label: 'Feeds'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: 'Settings'),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return FeedsPage();
            case 1:
              return SearchsPage();
            case 2:
              return SettingsPage();
            default:
              return Center(
                child: Text('Page not Found'),
              );
          }
        });
  }
}

