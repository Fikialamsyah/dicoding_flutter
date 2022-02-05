import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? valueA;
  int? valueB;
  String? operator;
  var sbValue = new StringBuffer();

  @override
  void initState() {
    super.initState();
    sbValue.write('0');
    operator = '';
  }

  void appendValue(String str) => setState(() {
    bool isDoCalculate = false;
    if(str == '='){
      isDoCalculate = true;
    } else if(str == '/' || str == 'x' || str == '-' || str == '+') {
      operator = str;
    }

    if(!isDoCalculate){
      if(sbValue.toString() == '0' && str != '0'){
        sbValue.clear();
      }
      sbValue.write(str);
    } else {
      List <String> values = sbValue.toString().split(operator!);
      if(values.length == 2 && values[0].isNotEmpty && values[1].isNotEmpty){
        valueA = int.parse(values[0]);
        valueB = int.parse(values[1]);
        sbValue.clear();
        int result = 0;
        switch(operator){
          case '%':
          result = valueA! % valueB!;
          break;
          case '/':
          result = (valueA! / valueB!) as int;
          break;
          case 'x':
          result = valueA! * valueB!;
          break;
          case '-':
          result = valueA! - valueB!;
          break;
          case '+':
          result = valueA! + valueB!;
          break;
        }
        sbValue.write(result);
        if(str == '/' || str == 'x'|| str == '-' || str == '+'){
          operator = str;
          sbValue.write(str);
        } else {
          operator = '';
        }
      }
    }
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Theme.of(context).primaryColor,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(sbValue.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white)),
            ),
          )),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: [
              CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorLight,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
                onTap: () {
                  setState(() {
                  });
                },
              ),
              CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorLight,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: () {},
              ),
              CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorLight,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '%',
                onTap: () {
                  appendValue('%');
                },
              ),
              CalculatorButton.Icon(
                backGroundColor: Theme.of(context).primaryColorDark,
                foreGroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
                onTap: () {},
              ),
              CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                onTap: () {
                  appendValue('7');
                },
              ),
              CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                onTap: () {
                  appendValue('8');
                },
              ),
              CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                onTap: () {
                  appendValue('9');
                },
              ),
              CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorDark,
                foreGroundColor: Theme.of(context).primaryColorLight,
                text: '/',
                onTap: () {
                  appendValue('/');
                },
              ),
               CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                onTap: () {
                  appendValue('4');
                },
              ),
               CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                onTap: () {
                  appendValue('5');
                },
              ),
               CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                onTap: () {
                  appendValue('6');
                },
              ),
                CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorDark,
                foreGroundColor: Theme.of(context).primaryColorLight,
                text: 'x',
                onTap: () {
                  appendValue('x');
                },
              ),
               CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                onTap: () {
                  appendValue('1');
                },
              ),
               CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                onTap: () {
                  appendValue('2');
                },
              ),
               CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                onTap: () {
                  appendValue('3');
                },
              ),
              CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorDark,
                foreGroundColor: Theme.of(context).primaryColorLight,
                text: '-',
                onTap: () {
                  appendValue('-');
                },
              ),
              CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                onTap: () {},
              ),
              CalculatorButton(
                backGroundColor: Colors.white,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                onTap: () {},
              ),
              CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorLight,
                foreGroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                onTap: () {
                  appendValue('=');
                },
              ),
              CalculatorButton(
                backGroundColor: Theme.of(context).primaryColorDark,
                foreGroundColor: Theme.of(context).primaryColorLight,
                text: '+',
                onTap: () {
                  appendValue('+');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}


class CalculatorButton extends StatelessWidget {
  final Color backGroundColor;
  final Color foreGroundColor;
  final String text;
  IconData? icon;
  final Function() onTap;

  CalculatorButton(
      {required this.backGroundColor,
      required this.foreGroundColor,
      required this.text,
      required this.onTap});

  CalculatorButton.Icon({
    required this.backGroundColor,
    required this.foreGroundColor,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: backGroundColor,
          child: Center(
            child: icon == null
                ? Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: foreGroundColor),
                  )
                : Icon(icon, color: foreGroundColor),
          )),
    );
  }
}
