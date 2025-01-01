import 'package:car_ui_/src/presentation/view/select_slot.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HorizontalParkingCards extends StatefulWidget {
  const HorizontalParkingCards({super.key});

  @override
  State<HorizontalParkingCards> createState() => _HorizontalParkingCardsState();
}

class _HorizontalParkingCardsState extends State<HorizontalParkingCards> {
  String currentImage = "assets/images/Group 1869.png";

  void rasmnialmash() {
    setState(() {
      currentImage = "assets/images/Rectangle 11.png";
    });
  }

  List<bool> isVisibleList = [false, false];

  void containerchiq(int index) {
    setState(() {
      isVisibleList[index] = !isVisibleList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.w,
      height: 28.h,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              containerchiq(index); // Bosilgan kontainerni topish
              rasmnialmash();
            },
            child: Container(
              margin: const EdgeInsets.all(7),
              width:
                  isVisibleList[index] ? 95.w : 89.w, // Kattalashgan kontainer
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff111018),
                    Color(0xff23212D),
                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.sp, vertical: 10.sp),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Rectangle 13.png",
                          height: 9.h,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "  Airport Parking\n ",
                                  style: TextStyle(
                                    color: const Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 19.sp,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: const Color(0xff9FA7C5),
                                    size: 18.sp,
                                  ),
                                ),
                                TextSpan(
                                  text: " Porter Away Salt Lake City",
                                  style: TextStyle(
                                    color: const Color(0xff747D9B),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: const Color(0xff5D6789),
                          fontSize: 16.sp,
                        ),
                        children: [
                          const TextSpan(
                            text: "Amount            ",
                          ),
                          const TextSpan(
                            text: "Avilable Slots          ",
                          ),
                          const TextSpan(
                            text: "Distance / KM\n",
                          ),
                          TextSpan(
                            text: "12/HR          ",
                            style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: 18.sp,
                            ),
                          ),
                          TextSpan(
                            text: "12-546               ",
                            style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: 18.sp,
                            ),
                          ),
                          TextSpan(
                            text: "02 KM",
                            style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  if (isVisibleList[index]) ...[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: Row(
                          children: [
                            Container(
                              width: 40.w,
                              height: 5.5.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xdffff4d26),
                                    Color(0xffF4691A),
                                  ],
                                  end: Alignment.bottomCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Get Directions",
                                  style: TextStyle(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SelectSlot(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 40.w,
                                height: 5.5.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff0AD772),
                                      Color(0xff20A740),
                                    ],
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(
                                      color: const Color(0xffFFFFFF),
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
