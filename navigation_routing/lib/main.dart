import 'package:flutter/material.dart';
import 'package:navigation_routing/firts_screen.dart';
import 'package:navigation_routing/return_data_screen.dart';
import 'package:navigation_routing/second_screen.dart';
import 'package:navigation_routing/second_screen_with_data.dart';

import 'another_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/secondScreen' : (context) => SecondScreen(),
       '/secondScreenWithData' : (context) => SecondScreenWithData(ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen' : (context) => ReturnDataScreen(),
        '/replacementScreen' : (context) => ReplacementScreen(),
        '/anotherScreen': (context) => AnotherScreen()
      },
    );
  }
}