import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/routing/route_config.dart';


/// void main() method starting point of entire Application
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override

  /// material app class entire app parent widget.
  /// this class provide proper principals design the
  /// screens developed by google...like button size,padding,...
  /// this material app principals taken the scaffold class
  Widget build(BuildContext context) {
    /// ScreenUtil package provide flexible ui like different
    /// pixels mobiles like run the single code.
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: true,

      ///To integrate go_router in your app, change your MaterialApp widget to MaterialApp.router.
      ///This constructor accepts a routerConfig property.
      builder: (BuildContext context, Widget? child) => MaterialApp.router(
        routerConfig: RouteConfigs.goRouter,
        debugShowCheckedModeBanner: false,

        /// themeData class provide entire app colors like
        /// we pass the app bar color entire project screen app bar color is same.
      ),
    );
  }
}
