import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarSection extends StatelessWidget {
  final TabController controller;
  const TabBarSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: true,
      labelColor: Colors.black,
      indicatorColor: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 20.r,),
      tabs: const [
        Text("News"),
        Text("Videos"),
      ],
    );
  }
}
