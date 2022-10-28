import 'package:flutter/material.dart';
import 'package:splashscreen/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome() async {
      await Future.delayed(Duration(milliseconds: 1500), () {});
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomepage(),
          ));
    }

    //_navigatetohome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
        child: Icon(Icons.apple, color: Colors.green, size: 100,),
      ),
    );
  }
}
