import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'category_page.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Feeds  Page'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Feeds Page',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
            SizedBox(
              height: 8,
            ),
            CupertinoButton.filled(
                child: Text('Select Category'), onPressed: () {
                  showCupertinoModalPopup(context: context, builder: (context){
                    return CupertinoActionSheet(title: Text('Select Categories'), actions: [
                      CupertinoActionSheetAction(
                        onPressed: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => CategoryPage(selectedCategory: 'Technology')));
                        },
                        child: Text('Technology'),
                      ),
                       CupertinoActionSheetAction(
                        onPressed: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => CategoryPage(selectedCategory: 'Bussines')));
                        },
                        child: Text('Bussines'),
                      ),
                       CupertinoActionSheetAction(
                        onPressed: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => CategoryPage(selectedCategory: 'Sport')));
                        },
                        child: Text('Sport'),
                      )
                    ],
                    cancelButton: CupertinoActionSheetAction(
                      child: Text('Close'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  );
                  });
                })
          ],
        ),
      ),
    );
  }
}
