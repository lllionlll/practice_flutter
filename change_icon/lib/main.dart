import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  IconData icon = Icons.android;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      icon = (icon == Icons.android ? Icons.apple : Icons.android);
                    });
                  },
                  child: Text("Change")),
            )
          ],
        ),
      ),
    );
  }
}
