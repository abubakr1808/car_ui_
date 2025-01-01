import 'package:car_ui_/src/presentation/view/home.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232629),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100.w,
              height: 50.h,
              child: Image.asset(
                "assets/images/pexels-erik-mclean-9331826 2 (5).png",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Welcome to\nParkover",
                  style: TextStyle(
                    color: const Color(0xffFFFFFF),
                    fontSize: 31.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Find the best possible parking space near by\nyour desired destination",
                  style: TextStyle(
                    color: const Color(0xffFFFFFF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.w),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: Container(
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: const Color(0xffFF4D26),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 12.w,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff12111A),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Group 2.png"),
                        ),
                      ),
                    ),
                    SizedBox(width: 22.w),
                    Text(
                      "Swipe to start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}
