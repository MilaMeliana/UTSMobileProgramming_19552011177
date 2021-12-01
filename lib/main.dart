import 'package:flutter/material.dart';
import 'package:fujifilm_19552011177/SplashScreen/splashscreen_19552011177.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instax FujiFilm',
      home: SplashScreen(),
    );
  }
}
