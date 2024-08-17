
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class whatDoYouGetWidget extends StatelessWidget {
  final String image;
  final String title;
  const whatDoYouGetWidget({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 68.w,
          height: 68.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFE8E9ED),
              width: 1.5.w,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(45.r),
          ),
          child: Center(
            child: Image.asset(
             image,
              width: 34.w,
              height: 40.h,
            ),
          ),
        ),
        5.verticalSpace,
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 8.sp,
            color: const Color(0xFF222E58),
          ),
        ),
      ],
    );
  }
}
