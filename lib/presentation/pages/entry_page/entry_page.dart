import 'package:fitness_app/core/app_images.dart';
import 'package:fitness_app/presentation/pages/entry_page/widgets/what_do_you_get_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          children: [
            // backbutton
        
            // background
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
            // entryimage1
            Positioned(
              top: 52.h,
              left: 199.h,
              child: Image.asset(
                AppImages.entryImageOne,
                width: 145.w,
                height: 202.h,
              ),
            ),
            // Text
            Positioned(
              top: 116.h,
              left: 36.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    "Health Risk",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      color: const Color(0xFF222E58),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "Assement",
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
                child: SingleChildScrollView(
                  // Wrap with SingleChildScrollView
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
                                    image: AppImages.fiOne,
                                    title: "Key Body \n Vitals"),
                                whatDoYouGetWidget(
                                    image: AppImages.fiTwo,
                                    title: "Posture \n Analysis"),
                                whatDoYouGetWidget(
                                    image: AppImages.fiThree,
                                    title: "Body \n Composition"),
                                whatDoYouGetWidget(
                                    image: AppImages.fiFour,
                                    title: "Instant \n Reports"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 336.w,
                        height: 532.h,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            // topbackgrouncircledesign
                            Positioned(
                              left: 140.w,
                              top: 0.h,
                              child: Transform.rotate(
                                angle: -10.89 * math.pi / 180,
                                child: Image.asset(
                                  AppImages.backGroundCircle,
                                  width: 148.w,
                                  height: 148.h,
                                ),
                              ),
                            ),
                            // bottombackgrouncircledesign
                            Positioned(
                              left: 180.w,
                              top: 400.h,
                              child: Transform.rotate(
                                angle: 170.89 * math.pi / 180,
                                child: Image.asset(
                                  AppImages.backGroundCircle,
                                  width: 118.w,
                                  height: 118.h,
                                ),
                              ),
                            ),
                              
                            //how we do it textwidget
                            Positioned(
                              top: 50.h,
                              child: Text(
                                "How we do it?",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                  color: const Color(0xFF222E58),
                                ),
                              ),
                            ),
                            //How we do it container
                            Positioned(
                              top: 90.h,
                              child: Container(
                                width: 320.w,
                                height: 350.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFE6E6E6),
                                    width: 1.w,
                                  ),
                                  color: const Color(0xFFFAFCFF),
                                  borderRadius: BorderRadius.circular(22.r),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 150.h,
                                      left: 10.w,
                                      right: .10.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 300.w,
                                            height: 31.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                                color: const Color(0xFFC1EAD1)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  AppImages.securityIcon,
                                                  width: 13.w,
                                                  height: 15.h,
                                                ),
                                                Text(
                                                  " We do not store or share your personal data",
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xFF222E58),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          10.verticalSpace,
                                          Text(
                                            "1. Ensure that you are in a well-lit space",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "2. Allow camera access and place your device against     a stable object or wall",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "3. Avoiding wearing baggy clothes",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "4.Make sure you exercise as per the instruction provided by the trainer",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "5.Watch the short preview before each exercise",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //how we do it container image
                            Positioned(
                              left: 30.w,
                              top: 55.h,
                              child: Image.asset(
                                AppImages.entryImageTwo,
                                width: 270.w,
                                height: 182.h,
                              ),
                            ),
                              
                            //Benefit textwidget
                            Positioned(
                              top: 480.h,
                              child: Text(
                                "Benefits",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                  color: const Color(0xFF222E58),
                                ),
                              ),
                            ),
                              
                            //Benefits container
                            Positioned(
                              top: 520.h,
                              child: Container(
                                width: 320.w,
                                height: 250.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFE6E6E6),
                                    width: 1.w,
                                  ),
                                  color: const Color(0xFFFAFCFF),
                                  borderRadius: BorderRadius.circular(22.r),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0.h,
                                      left: 10.w,
                                      right: .10.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "1. Ensure that you are in a well-lit space",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "2. Allow camera access and place your device against     a stable object or wall",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "3. Avoiding wearing baggy clothes",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "4.Make sure you exercise as per the instruction provided by the trainer",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Text(
                                            "5.Watch the short preview before each exercise",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: const Color(0xFF222E58),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      
    );
  }
}

