// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'form.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: "Demo",
    theme:ThemeData(
      primarySwatch:Colors.lightBlue 
    ) ,
    home:MyForm()

    );
  }
}
