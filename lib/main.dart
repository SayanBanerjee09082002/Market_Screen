import 'package:flutter/material.dart';
import 'package:market_screen/market.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      darkTheme:ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Market(),
    );
  }
}