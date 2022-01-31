import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation & Routing'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
              child: Text('Go to Second Screen')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments: 'Hello from First Screen');
              },
              child: Text('Navigation with Data')),
          ElevatedButton(
              onPressed: () async {
                final result =
                    await Navigator.pushNamed(context, '/returnDataScreen');
                SnackBar snackBar = SnackBar(
                  content: Text('$result'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Return Data from Another Screen')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/replacementScreen');
          },
           child: Text('Replace Screen')),
        ],
      )),
    );
  }
}

class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/anotherScreen');
            },
            child: Text('Open Another Screen')),
      ),
    );
  }
}
