import 'package:fitness_app/core/app_images.dart';
import 'package:fitness_app/presentation/pages/entry_page/widgets/what_do_you_get_widget.dart';
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
            top: 52.h,
            left: 199.h,
            child: Image.asset(
              AppImages.entryImageOne,
              width: 145.w,
              height: 202.h,
            ),
          ),
          //Text
          Positioned(
            top: 116.h,
            left: 36.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Health Risk \n Assement",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: const Color(0xFF222E58),
                  ),
                ),
                10.verticalSpace,
                // time
                Container(
                  width: 62.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.phTimer,
                        width: 11.w,
                        height: 13.h,
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
                ),
              ],
            ),
          ),
          Positioned(
            left: 0.w,
            right: 0.w,
            bottom: 0.h,
            top: 265.h,
            child: Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What do you get ? ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            color: const Color(0xFF222E58),
                          ),
                        ),
                        15.verticalSpace,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            whatDoYouGetWidget(
                                image: AppImages.fiOne, title: "Key Body \n Vitals"),
                            whatDoYouGetWidget(
                                image: AppImages.fiTwo, title: "Posture \n Analysis"),
                            whatDoYouGetWidget(
                                image: AppImages.fiThree, title: "Body \n Composition"),
                            whatDoYouGetWidget(
                                image: AppImages.fiFour, title: "Instant \n Reports"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
