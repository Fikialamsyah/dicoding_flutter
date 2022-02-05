import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

class ImplicitPage extends StatefulWidget {
  const ImplicitPage({ Key? key }) : super(key: key);

  @override
  State<ImplicitPage> createState() => _ImplicitPageState();
}

class _ImplicitPageState extends State<ImplicitPage> {
  bool _isBig = false;
  double _size = 50.0;

  Tween<double> _animationTween = Tween(begin: 0, end: pi *2);

  Tween _colorTween = ColorTween(begin: Colors.blue, end: Colors.purple);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            color: Colors.blue,
              height: _size,
              width: _size,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _size = _isBig ? 100 : 100;
                  _isBig = !_isBig;
                });
              },
              child: Text('Animate')
          ),
          SizedBox(height: 40,),
          TweenAnimationBuilder(
            tween: _animationTween,
            duration: Duration(seconds: 3),
            builder: (context,double value, child) {
              return Transform.rotate(
                angle: value,
                child: Container(
                  color: Colors.blue,
                  height: _size,
                  width: _size,
                ),
              );
            }),
            SizedBox(height: 40,),
          TweenAnimationBuilder<Color?>(
            tween: _colorTween as ColorTween,
            duration: Duration(seconds: 3),
            builder: (context, Color? value, child){
              return Container(
                color: value,
                height: _size,
                width: _size,
              );
            },
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'))
        ]),
    )
    );
  }
}