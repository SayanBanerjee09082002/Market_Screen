import 'package:flutter/material.dart';
import 'package:market_screen/market.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1D1C1C),
      ),
      debugShowCheckedModeBanner: false,
      home: Market(),
    );
  }
}