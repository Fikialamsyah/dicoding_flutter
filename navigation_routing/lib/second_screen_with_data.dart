import 'package:flutter/material.dart';

class SecondScreenWithData extends StatelessWidget {
  final String data;

  const SecondScreenWithData(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
