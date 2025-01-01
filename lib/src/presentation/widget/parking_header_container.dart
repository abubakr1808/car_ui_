import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ParkingHeaderContainer extends StatelessWidget {
  const ParkingHeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 16.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
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
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                width: 8.6.w,
                height: 5.5.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFF4D26),
                      Color(0xffF4691A),
                    ],
                    end: Alignment.bottomCenter,
                    begin: Alignment.bottomCenter,
                  ),
                ),
                child: Icon(
                  Icons.close,
                  color: const Color(0xffFFFFFF),
                  size: 19.sp,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "  Find Your Parking Slot\n",
                    style: TextStyle(
                      color: const Color(0xffffffff),
                      fontSize: 17.sp,
                      height: 1,
                    ),
                  ),
                  TextSpan(
                    text: "  Basement Parking, B05",
                    style: TextStyle(
                      color: const Color(0xff9FA7C5),
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 25, 23, 38),
              ),
              width: 18.w,
              height: 8.3.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$ 12.5",
                      style: TextStyle(
                        color: const Color(0xff23A154),
                        fontSize: 15.sp,
                      ),
                    ),
                    Text(
                      "01:05. HRS",
                      style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
