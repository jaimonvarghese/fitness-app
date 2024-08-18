import 'package:fitness_app/core/app_images.dart';
import 'package:fitness_app/presentation/pages/entry_page/widgets/what_do_you_get_widget.dart';
import 'package:fitness_app/presentation/pages/home/widgets/app_bar_widget.dart';
import 'package:fitness_app/presentation/pages/home/widgets/challenges_widget.dart';
import 'package:fitness_app/presentation/pages/home/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/tab_bar_section.dart';
import 'widgets/work_out_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabControler;

  @override
  void initState() {
    super.initState();
    _tabControler = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const appBarWidget(),
              TabBarSection(controller: _tabControler),
              SizedBox(
                height: 260.h,
                child: TabBarView(
                  controller: _tabControler,
                  children: [
                    Container(
                      child: Center(
                        child: Text("tab1"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("tab2"),
                      ),
                    ),
                  ],
                ),
              ),
              //challenges
              const ChallengesWidget(),
              10.verticalSpace,

              const WorkOutWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
