import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vines_love/app/splash/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Vine Lovers',
      debugShowCheckedModeBanner: false,

      home: SplashView(),
    );
  }
}


