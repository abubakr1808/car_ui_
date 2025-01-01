import 'package:car_ui_/src/presentation/widget/horizontal_parking_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0x000000ff),
          image: DecorationImage(
            image: AssetImage(currentImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 24.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff111018),
                    Color(0xff23212D),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.sp,
                  vertical: 5.sp,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.near_me_rounded,
                                  color: const Color(0xffFFFFFF),
                                  size: 18.sp,
                                ),
                              ),
                              TextSpan(
                                text: "  Salt Lake City",
                                style: TextStyle(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 2,
                                ),
                              ),
                              TextSpan(
                                text: "\nTerminal Departure RD #5505,",
                                style: TextStyle(
                                  color: const Color(0xff9FA7C5),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 8.h,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/png person.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Container(
                      height: 6.5.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff12111A),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: const Color(0xffFFFFFF),
                            size: 19.sp,
                          ),
                          hintText: " Search Location",
                          hintStyle: TextStyle(
                            color: const Color(0xff9FA7C5),
                            fontSize: 16.sp,
                            height: 2.2,
                          ),
                          suffixIcon: Container(
                            width: 12.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xffFF4D26),
                                  Color(0xffF4691A),
                                ],
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Expanded(
                              child: Icon(
                                Icons.mic_sharp,
                                color: const Color(0xffEFA581),
                                size: 22.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const HorizontalParkingCards(),
            SizedBox(height: 1.2.h),
          ],
        ),
      ),
    );
  }
}
