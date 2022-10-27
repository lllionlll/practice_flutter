import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String txt = "Before";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[50],
        width: double.infinity,
        margin: EdgeInsets.only(top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: TextStyle(fontSize: 25),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt = (txt == "Before" ? "After" : "Before");
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
