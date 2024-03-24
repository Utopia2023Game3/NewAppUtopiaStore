import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Part7 extends StatelessWidget {
  const Part7({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 850.0,
      // width: 600.0,
      child: Stack(
          children: [
          Container(
          height: 112.0,
          width: double.infinity,
          color: MyColor.white,
          alignment: Alignment.topCenter,
          child: const Padding(
            padding: EdgeInsets.only(top: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.chevron_left, size: 25.0, color: MyColor.gold),
                      Text("بیشتر", style: TextStyle(fontSize: 14.0, color: MyColor.goldDark, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Expanded(child: Divider(thickness: 1.4, height: 5.0, color: MyColor.goldDark)),
                Padding(padding: EdgeInsets.symmetric(horizontal: 16.0), child: Text("پرفروش ترین", style: TextStyle(fontSize: 16.0, color: MyColor.goldDark, fontWeight: FontWeight.bold))),
              ],
            ),
          )),
      Positioned(
        top: 48.0,
        left: 2.0,
        right: 2.0,
        bottom: 10.0,
        child: SizedBox(
        height: 700.0,
        child: ListView.builder(physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 15.0, right: 20.0, left: 20.0, bottom: 5.0),
                height: 243.0,
                width: 100.0,
                decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(17.0)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("کباب بناب ", style: TextStyle(fontSize: 18.0, color: MyColor.gold, fontFamily: 'IranSans')),
                    Text("تومان120000", style: TextStyle(fontSize: 12.0, color: MyColor.gray, fontFamily: 'adad', fontWeight: FontWeight.w600)),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.keyboard_double_arrow_left, size: 8.0, color: MyColor.white),
                          Text("ورود", style: TextStyle(fontSize: 12.0, color: MyColor.white, fontWeight: FontWeight.w500))
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    )],
    )
    ,
    );
  }
}
