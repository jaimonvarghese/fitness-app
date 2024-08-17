import 'package:fitness_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //backbutton
          
          //background
          Positioned(
            top: 0.h,
            left: 0.w,
            right: 0.w,
            child: Container(
              width: 375.w,
              height: 322.h,
              decoration: const BoxDecoration(
                color: Color(0x8069F5BB),
              ),
            ),
          ),
          //entryimage1
          Positioned(
            top: 52.r,
            left: 199.r,
            child: Image.asset(
              AppImages.entryImageOne,
              width: 145.2,
              height: 202.h,
            ),
          ),
          //Text1
          Positioned(
            top: 116.h,
            left: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Health Risk",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: const Color(0xFF222E58),
                  ),
                ),
                Text(
                  "Assement",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: const Color(0xFF222E58),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                // time
                Container(
                  width: 60.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.phTimer,
                        width: 13.w,
                        height: 18.h,
                      ),
                      Text(
                        " 4 min",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                          color: const Color(0xFF222E58),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
