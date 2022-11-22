import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? s;
  TextEditingController txt = TextEditingController();
  void st() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      s = prefs.getString('data');
    });
  }
  void add() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('data', txt.text.trim());
    setState(() {
      s = prefs.getString('data');
    });
  }
  void remove() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('data', 'null');
    setState((){
      s = prefs.getString('data');
    });
  }
  @override
  Widget build(BuildContext context) {
    st();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Data : ${s}'),
            TextField(
              controller: txt,
              decoration: InputDecoration(
                hintText: 'Data',
                border: OutlineInputBorder()
              ),
            ),
            ElevatedButton(
              onPressed: () {
                add();
              },
              child: Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                remove();
              },
              child: Text('Remove'),
            )
          ],
        ),
      )
    );
  }
}
