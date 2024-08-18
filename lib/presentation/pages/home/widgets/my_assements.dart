import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_images.dart';

class MyAssements extends StatelessWidget {
  const MyAssements({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        // physics:const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
              child: Container(
                width: 315.w,
                height: 120.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 120.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          bottomLeft: Radius.circular(15.r),
                        ),
                        color: const Color(0xFFDFBE5F),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImages.sdOne),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fitness Assessment",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color(0xFF303030),
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "Get started on your fitness",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: const Color(0xFF303030),
                            ),
                          ),
                          Text(
                            "goals with our physical",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: const Color(0xFF303030),
                            ),
                          ),
                          Text(
                            "assessment and vital scan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: const Color(0xFF303030),
                            ),
                          ),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 19.w,
                                height: 19.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF255FD5),
                                  borderRadius: BorderRadius.circular(45.r),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 16.r,
                                  ),
                                ),
                              ),
                              3.horizontalSpace,
                              Text(
                                "Start",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: const Color(0xFF255FD5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
