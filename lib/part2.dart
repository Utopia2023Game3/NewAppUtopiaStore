import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Part2 extends StatelessWidget {
  const Part2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: Container(height: 225.0, width: double.infinity, decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
