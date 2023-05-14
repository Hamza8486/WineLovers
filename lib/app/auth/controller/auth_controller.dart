
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isVisible = true.obs;


  updateVisibleStatus() {
    isVisible.toggle();
    update();
  }




  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();







}