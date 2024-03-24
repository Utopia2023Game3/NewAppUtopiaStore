// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'colors.dart';

class Part5 extends StatelessWidget {
  const Part5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 364.0,
      width: double.infinity,
      color: MyColor.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12.0, right: 8.0, left: 8.0, bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0, left: 8.0, top: 1.0),
                  child: Row(
                    children: [
                      Icon(Icons.chevron_left, size: 20.0, color: MyColor.gold),
                      Text("بیشتر", style: TextStyle(fontSize: 13.5, color: MyColor.goldDark, fontWeight: FontWeight.bold, fontFamily: 'IranSans'))
                    ],
                  ),
                ),
                Expanded(child: Divider(thickness: 1.2, color: MyColor.goldDark)),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text("جدیدترین", style: TextStyle(fontSize: 17.0, color: MyColor.goldDark, fontWeight: FontWeight.bold, fontFamily: 'IranSans'))),
              ],
            ),
          ),
          const SizedBox(height: 7.0),
          Container(
            height: 260.0,
            color: MyColor.white,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 14.0, left: index == 15 ? 17.0 : 0),
                      child: Column(
                        children: [
                          Container(height: 171.0, width: 150.0, decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(7.0))),
                          const SizedBox(height: 8.0),
                          Container(
                            alignment: Alignment.center,
                            child: const Text("کباب بناب", style: TextStyle(fontSize: 18.5, color: MyColor.black, fontFamily: 'adad')),
                          ),
                          const SizedBox(height: 13.0),
                          Container(
                            alignment: Alignment.center,
                            child: const Text("تومان1200000", style: TextStyle(fontWeight: FontWeight.bold, color: MyColor.grayDark, fontSize: 14.0, fontFamily: 'adad')),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
