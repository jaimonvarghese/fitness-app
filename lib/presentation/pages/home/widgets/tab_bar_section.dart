import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({
    super.key,
    required TabController tabControler,
  }) : _tabControler = tabControler;

  final TabController _tabControler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338.w,
      height: 58.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F9),
        borderRadius: BorderRadius.circular(23.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.r),
        child: TabBar(
          unselectedLabelColor: const Color(0xFF303030),
          labelColor: Colors.blue,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23.r),
          ),
          controller: _tabControler,
          tabs: const [
            Tab(
              text: "My Assements",
            ),
            Tab(
              text: "My Appointments",
            ),
          ],
        ),
      ),
    );
  }
}
