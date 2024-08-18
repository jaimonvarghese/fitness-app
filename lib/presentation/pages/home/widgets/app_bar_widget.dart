import 'package:fitness_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class appBarWidget extends StatelessWidget {
  const appBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.0,
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: Padding(
        padding: EdgeInsets.only(top: 20.h,),
        child: Text(
          "Hello Jane",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 26.sp,
            color: const Color(0xFF255FD5),
          ),
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(top: 20.h,),
          width: 26.w,
          height: 26.h,
          decoration: BoxDecoration(
            image:const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.account),
            ),
            borderRadius: BorderRadius.circular(45.r),
          ),
        ),
      ],
    );
  }
}
