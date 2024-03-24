// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Part8 extends StatelessWidget {
  const Part8({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.0,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 44.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: const Icon(Icons.chevron_left, size: 37.0, color: MyColor.gold),
                  ),
                  Container(alignment: Alignment.bottomCenter, child: const Text("آخرین بازدید", style: TextStyle(color: MyColor.gold, fontSize: 23.0, fontFamily: 'IranSans'))),
                ],
              ),
            ),
          ),
          const SizedBox(height: 7.0),
          Container(height: 1.0, width: double.infinity, decoration: BoxDecoration(border: Border.all(width: 1.3, color: MyColor.gold))),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 300,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: const EdgeInsets.only(right: 7.6),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 15.0, left: index == 7 ? 22.0 : 0),
                        child: Column(
                          children: [
                            Container(height: 174.0, width: 160.0, decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(7.0))),
                            const SizedBox(height: 11.0),
                            Container(alignment: Alignment.center, child: const Text("کباب بناب", style: TextStyle(fontSize: 18.0, color: MyColor.white, fontFamily: 'IranSans'))),
                            const SizedBox(height: 13.0),
                            Container(
                                alignment: Alignment.center,
                                child: const Text("تومان 1200000", style: TextStyle(fontWeight: FontWeight.w100, color: MyColor.white, fontSize: 12.0, fontFamily: 'adad'))),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
