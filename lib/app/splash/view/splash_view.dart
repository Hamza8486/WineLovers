import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vines_love/app/auth/login/login_view.dart';
import 'package:vines_love/util/theme.dart';
import 'package:vines_love/widgets/app_text.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {




  @override
  void initState() {

    super.initState();
    moveToNext();
  }

  void moveToNext() {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(()=>LoginView(),
          transition: Transition.cupertinoDialog
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height*0.47,),
              Center(
                child:  AppText(
                  title: "Vine Lovers",
                  size: AppSizes.size_23,
                  fontFamily: AppFont.bold,
                  color: AppColor.primaryColor,
                ),
              )

            ],
          ),
        ));
  }
}
