
import 'package:fitness_app/presentation/pages/home/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_images.dart';

class ChallengesWidget extends StatelessWidget {
  const ChallengesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const RowTextWidget(title: "Challenges"),
            10.verticalSpace,
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 10.w, horizontal: 20.h),
              width: 338.w,
              height: 140.h,
              decoration: BoxDecoration(
                color: const Color(0xFFC1EAD1),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today's Challenge!",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: const Color(0xFF2B7A71),
                    ),
                  ),
                  5.verticalSpace,
                  Container(
                    width: 84.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B7A71),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Center(
                      child: Text(
                        "Push Up 20x",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  5.verticalSpace,
                  Container(
                    width: 161.w,
                    height: 9.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 82.w,
                          height: 9.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF88A5),
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                        ),
                      ],
                    ),
                  ),
                  5.verticalSpace,
                  Text(
                    "10/20 Complete",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: const Color(0xFF303030),
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    width: 98.w,
                    height: 27.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
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
                          "Continue",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: const Color(0xFF255FD5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          right: 0.w,
          top: 70.h,
          child: Image.asset(
            AppImages.challengesImage,
            width: 140.w,
            height: 80.h,
          ),
        ),
      ],
    );
  }
}
