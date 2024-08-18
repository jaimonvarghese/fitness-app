import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowTextWidget extends StatelessWidget {
  final String title;
  const RowTextWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: const Color(0xFF303030),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "View All",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: const Color(0xFF303030),
                decoration: TextDecoration.underline,
                decorationThickness: 2.h,
              ),
            ),
            5.horizontalSpace,
            Container(
              width: 25.w,
              height: 25.h,
              decoration: BoxDecoration(
                color: const Color(0xFF232F58),
                borderRadius: BorderRadius.circular(45.r),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 16.r,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
