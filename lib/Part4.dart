import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Part4 extends StatelessWidget {
  const Part4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 360.0,
              decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: const Icon(Icons.keyboard_arrow_left_sharp, size: 25.0, color:MyColor.gold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: const Text("خوش قیمت", style: TextStyle(color: MyColor.gold, fontSize: 18.0, fontFamily: 'IranSans')),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 173.0,
                  decoration: BoxDecoration(color:MyColor.black, borderRadius: BorderRadius.circular(6.0)),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("کباب بناب ", style: TextStyle(fontSize: 14.0, color: MyColor.gold, fontFamily: 'IranSans')),
                        Text("تومان 120000", style: TextStyle(fontSize: 9.0, color: MyColor.gray, fontFamily: 'adad')),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.keyboard_double_arrow_left, size: 8.0, color: MyColor.white),
                            Text("ورود", style: TextStyle(color: MyColor.white, fontSize: 8.0, fontFamily: 'IranSans'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 173.0,
                  decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(7.5)),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("کباب بناب ", style: TextStyle(fontSize: 14.0, color: MyColor.gold, fontFamily: 'IranSans')),
                        Text("تومان 120000", style: TextStyle(fontSize: 9.0, color: MyColor.gray, fontFamily: 'adad')),
                        SizedBox(height: 7.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.keyboard_double_arrow_left, size: 8.0, color: MyColor.white),
                            Text("ورود", style: TextStyle(color: MyColor.white, fontSize: 8.0, fontFamily: 'IranSans'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
