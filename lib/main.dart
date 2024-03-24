import 'package:flutter/material.dart';
import 'package:untitled/Part4.dart';
import 'package:untitled/Part5.dart';
import 'package:untitled/Part6.dart';
import 'package:untitled/Part7.dart';
import 'package:untitled/Part8.dart';
import 'package:untitled/part1.dart';
import 'package:untitled/part3.dart';
import 'package:untitled/utils.dart';
import 'part2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF2D2D2D),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Part1(),
              SizedBox(height: 17.0),
              Part2(),
              SizedBox(height: 20.0),
              Part3(),
              SizedBox(height: 40.0),
              Part4(),
              SizedBox(height: 50.0),
              Part5(),
              Part6(),
              Part7(),
              Part8()
            ],
          ),
        ),
      ),
    );
  }
}
