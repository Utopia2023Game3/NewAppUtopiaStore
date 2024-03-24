import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Part6 extends StatelessWidget {
  const Part6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.0,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
        color: MyColor.gold,
        width: 1.8,
      )),
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 27.0),
      child: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: const EdgeInsets.only(top: 18.0, right: 25.0, left: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                          height: 300.0,
                          decoration: BoxDecoration(
                            color: MyColor.black,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 17.0),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: const Icon(
                                    Icons.chevron_left,
                                    size: 30.0,
                                    color: MyColor.gold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Container(alignment: Alignment.bottomCenter, child: const Text(" فروش ویژه", style: TextStyle(color: MyColor.gold, fontSize: 20.0))),
                              ),
                            ],
                          )),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4.0, bottom: 35.0, left: 15.0),
                      child: Container(
                        height: 175.0,
                        decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(8.0)),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 23.0, right: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    child: const Padding(padding: EdgeInsets.only(bottom: 3.0), child: Icon(Icons.keyboard_double_arrow_left, size: 6.0, color: MyColor.white)),
                                  ),
                                  const SizedBox(width: 3.0),
                                  Container(alignment: Alignment.bottomCenter, child: const Text("ورود", style: TextStyle(fontSize: 9.5, color: MyColor.white, fontWeight: FontWeight.w500))),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 14.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("کباب بناب ", style: TextStyle(fontSize: 14.0, color: MyColor.gold)),
                                  SizedBox(height: 2.0),
                                  Text("تومان120000", style: TextStyle(fontSize: 9.0, color: MyColor.gray, fontWeight: FontWeight.w600))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0, bottom: 35.0, left: 8.0),
                      child: Container(
                        height: 175.0,
                        decoration: BoxDecoration(color: MyColor.black, borderRadius: BorderRadius.circular(8.0)),
                        alignment: Alignment.bottomCenter,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 23.0, right: 10.0),
                            child: Row(
                              children: [
                                Container(
                                    alignment: Alignment.bottomCenter,
                                    child: const Padding(padding: EdgeInsets.only(bottom: 3.0), child: Icon(Icons.keyboard_double_arrow_left, size: 6.0, color: MyColor.white))),
                                const SizedBox(width: 3.0),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text("ورود", style: TextStyle(fontSize: 9.5, color: MyColor.white, fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 14.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("کباب بناب ", style: TextStyle(fontSize: 14.0, color: MyColor.gold)),
                                SizedBox(height: 2.0),
                                Text("تومان120000", style: TextStyle(fontSize: 9.0, color: MyColor.gray, fontWeight: FontWeight.w600))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
          Positioned(
            top: 0.0,
            left: 0,
            child: RotatedBox(quarterTurns: 135, child: ClipPath(clipper: TriangleClipper(), child: Container(color: MyColor.gold, height: 23, width: 23))),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: RotatedBox(quarterTurns: 45, child: ClipPath(clipper: TriangleClipper(), child: Container(color: MyColor.gold, height: 23, width: 23))),
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
    path.lineTo(size.height, 0.0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
