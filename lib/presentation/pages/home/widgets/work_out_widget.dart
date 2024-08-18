import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_images.dart';
import 'row_text_widget.dart';

class WorkOutWidget extends StatelessWidget {
  const WorkOutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RowTextWidget(title: "Workout Routines"),
        15.verticalSpace,
         SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               const WorkOutContainerWidget(),
                10.horizontalSpace,
               const WorkOutContainerWidget(),
              ],
            )),
      ],
    );
  }
}

class WorkOutContainerWidget extends StatelessWidget {
  const WorkOutContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      height: 120.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE8E9ED),
          width: 1.w,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100.w,
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
            padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sweat Starter",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: const Color(0xFF303030),
                    ),
                  ),
                  5.verticalSpace,
                  Text(
                    "Full Body",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: const Color(0xFF666666),
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    width: 66.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFE8E9ED),
                        width: 1.w,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Center(
                      child: Text(
                        "Lose Weight",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 8.sp,
                          color: const Color(0xFF255FD5),
                        ),
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  Row(
                    children: [
                      Text(
                        "Difficulty : ",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: const Color(0xFF666666),
                        ),
                      ),
                      Text(
                        "Medium ",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: const Color(0xFFFF88A5),
                        ),
                      ),
                    ],
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
