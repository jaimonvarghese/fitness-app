import 'package:device_preview/device_preview.dart';
import 'package:fitness_app/presentation/pages/entry_page/entry_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeigth = MediaQuery.of(context).size.height;
    // print(screenHeigth);
    // print(screenWidth);
    return ScreenUtilInit(
      designSize: const Size(
          360, 640), // Set the design size of the UI you are working on
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const EntryPage(),
        );
      },
    );
  }
}
