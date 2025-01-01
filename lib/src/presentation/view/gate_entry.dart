import 'package:car_ui_/src/presentation/widget/parking_header_container.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GateEntry extends StatefulWidget {
  const GateEntry({super.key});

  @override
  State<GateEntry> createState() => _GateEntryState();
}

class _GateEntryState extends State<GateEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/Rectangle 14.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const ParkingHeaderContainer(),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 15.5.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff111018),
                    Color(0xff23212D),
                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 40.h,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff111018),
                                Color(0xff23212D),
                              ],
                              end: Alignment.bottomCenter,
                              begin: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/images/Group 39.png", // Rasm joylashuvini almashtiring
                                  width: double.infinity,
                                  height: 7.w,
                                  fit: BoxFit.contain,
                                ),
                                Image.asset(
                                  "assets/images/Code-128 1.png", // Rasm joylashuvini almashtiring
                                  width: double.infinity,
                                  height: 4.5.w,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  "Scan and Pay South Gate 02",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    color: const Color(0xff9FA7C5),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 92.w,
                                    height: 6.6.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff0AD772),
                                          Color(0xff20A740),
                                        ],
                                        end: Alignment.bottomCenter,
                                        begin: Alignment.topCenter,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Make a Payment",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Container(
                    width: 92.w,
                    height: 6.6.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff0AD772),
                          Color(0xff20A740),
                        ],
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Make a Payment",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
