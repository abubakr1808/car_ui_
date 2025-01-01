import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ParkingHeader extends StatelessWidget {
  const ParkingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              Icons.arrow_back_ios_new,
              color: const Color(0xffFFFFFF),
              size: 19.sp,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "  Airport Parking\n",
                style: TextStyle(
                  color: const Color(0xffffffff),
                  fontSize: 17.sp,
                  height: 1,
                ),
              ),
              TextSpan(
                text: "  South Gate 02, Basement Parking",
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
          width: 15.w,
          height: 5.9.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: const Color(0xffFFFFFF),
                  size: 17.sp,
                ),
                Expanded(
                  child: Text(
                    "12 Sep",
                    style: TextStyle(
                      color: const Color(0xffFFFFFF),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
