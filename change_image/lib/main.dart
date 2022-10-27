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
  bool can = true;
  Image img1 = Image.network(
      "https://render.fineartamerica.com/images/rendered/medium/print/6/8/break/images-medium-5/awesome-solitude-bess-hamiti.jpg");
  Image img2 = Image.network(
      "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: (can ? img1 : img2),
              width: 300,
              height: 300,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    can = !can;
                  });
                },
                child: Text("Change"))
          ],
        ),
      ),
    );
  }
}
