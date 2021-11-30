import 'package:flutter/material.dart';
import 'dart:async';
import '../pages/dashboard_19552011177.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                './images/fujifilm.png',
                width: 200,
                height: 200,
              ),
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Made With ',
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Text(' | ©2021'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
