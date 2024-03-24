import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Part3 extends StatelessWidget {
  const Part3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.keyboard_arrow_left_sharp,
                  size: 21.5,
                  color: MyColor.gold,
                ),
                Text("بیشتر", style: TextStyle(fontSize: 13.5, color: MyColor.gold, fontFamily: 'IranSans'))
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SizedBox(
              height: 135.0,
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: ListView.builder(
                    // dragStartBehavior: DragStartBehavior.down,
                    scrollDirection: Axis.horizontal,
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.only(right: 15.0,left:index == 15 ? 17.0 : 0.0),
                        child: Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xFF424141),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 4.0),
                                child: Container(
                                  height: 90.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(color:  MyColor.grayLight, borderRadius: BorderRadius.circular(5.0)),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: const Text("فست فود", style: TextStyle(fontSize: 10.0, color: MyColor.white, fontFamily: 'IranSans')),
                              )
                            ],
                          ),
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
