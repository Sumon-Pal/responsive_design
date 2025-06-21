import 'package:flutter/material.dart';
import 'package:responsive_design/Alert/alert.dart';
import 'package:responsive_design/aspectratio_package_responsive.dart';
import 'package:responsive_design/drawertabbar.dart';
import 'package:responsive_design/lifecycle.dart';
import 'package:responsive_design/responsive.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const alertdialoge(),
    );
  }
}
