import 'package:car_ui_/src/presentation/ui/ui.dart';
import 'package:car_ui_/src/presentation/view/gate_entry.dart';
import 'package:car_ui_/src/presentation/widget/parking_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectSlot extends StatefulWidget {
  const SelectSlot({super.key});

  @override
  State<SelectSlot> createState() => _SelectSlotState();
}

class _SelectSlotState extends State<SelectSlot> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111018),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.sp, vertical: 17.sp),
          child: Column(
            children: [
              ParkingHeader(),
              SizedBox(height: 4.w),
              SizedBox(
                width: double.infinity,
                height: 8.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: floor.length,
                  itemBuilder: (context, index) {
                    // ignore: unused_local_variable
                    bool isSelected = index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(12),
                        width: 24.5.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff0E1128),
                              Color(0xff0D0F1A),
                            ],
                            end: Alignment.bottomCenter,
                            begin: Alignment.bottomCenter,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(126, 0, 0, 0),
                              offset: Offset(4, 4),
                              blurRadius: 3,
                            ),
                          ],
                          border: Border.all(
                            color: const Color(0xff2A3047),
                            width: 0.3,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            floor[index],
                            style: TextStyle(
                              fontSize: 17.sp,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xff484C77),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Image.asset(
                "assets/images/Group 45.png",
                height: 65.h,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 3.h),
              Image.asset(
                "assets/images/selection.png",
                height: 2.8.h,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 2.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GateEntry(),
                    ),
                  );
                },
                child: Container(
                  width: 89.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff1dad47),
                        Color(0xff179C40),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Book Your Slot",
                      style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontSize: 17.5.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
