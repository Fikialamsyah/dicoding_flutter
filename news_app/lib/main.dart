import 'package:flutter/material.dart';
import 'package:news_app/article.dart';
import 'package:news_app/detail_page.dart';
import 'package:news_app/styles.dart';
import 'package:news_app/web_view.dart';
import 'widgets/list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primaryColor,
          onPrimary: Colors.black,
          secondary: secondaryColor
        ),
        textTheme: myTextTheme,
        appBarTheme: AppBarTheme(elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            onPrimary: Colors.white,
            textStyle: TextStyle(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0)
              )
            )
          ),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NewsListPage.routeName,
      routes: {
        NewsListPage.routeName: (context) => NewsListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(article: ModalRoute.of(context)?.settings.arguments as Article,
        ),
        ArticleWebView.routeName: (context) => ArticleWebView(url: ModalRoute.of(context)?.settings.arguments as String,)
      },
    );
  }
}

