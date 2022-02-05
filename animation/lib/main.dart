import 'package:animation/explicit_page.dart';
import 'package:animation/implicit_page.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => AnimationPage(),
        '/implicitPage': (context) => ImplicitPage(),
        '/explicitPage':(context) => ExplicitPage()
      },
    );
  }
}

class AnimationPage extends StatelessWidget {
  const AnimationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/implicitPage');
            }, child: Text('Implicit Animation')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/explicitPage');
            }, child: Text('Explicit Animation'))
          ],
        )
      ),
    );
  }
}