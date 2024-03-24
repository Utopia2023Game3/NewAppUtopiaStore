import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Part1 extends StatelessWidget {
  const Part1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17.0, left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const Icon(Icons.menu_outlined, color: MyColor.white, size: 40.0), Image.asset('images/photo.jpg', height: 70.0), const Icon(CupertinoIcons.search, size: 45.0, color: MyColor.white)],
      ),
    );
  }
}
