import 'package:flutter/material.dart';
import 'package:kodingyuk_web/homepage_dekstop.dart';
import 'package:kodingyuk_web/homepage_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KodingYuk!',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: deviceWidth < 800? HomePageMobile() : HomePageDesktop() ,
    );
  }
}