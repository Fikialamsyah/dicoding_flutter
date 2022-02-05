import 'package:flutter/cupertino.dart';

class SearchsPage extends StatelessWidget {
  const SearchsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Settings Page'),),
      child: Center(
        child: Text('Search page', style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,)
      ),
    );
  }
}