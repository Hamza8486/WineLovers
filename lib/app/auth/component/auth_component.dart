
import 'package:flutter/material.dart';
import 'package:vines_love/util/theme.dart';
import 'package:vines_love/widgets/app_text.dart';


Widget textAuth({text}){
  return AppText(
    title: text,
    size: AppSizes.size_15,
    fontFamily: AppFont.medium,
    fontWeight: FontWeight.w500,
    color: AppColor.blackColor,
  );

}