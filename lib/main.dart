import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugasprakmob/home.dart';
import 'login.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
