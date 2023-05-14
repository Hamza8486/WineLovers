import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vines_love/app/auth/component/auth_component.dart';
import 'package:vines_love/app/auth/controller/auth_controller.dart';
import 'package:vines_love/app/home/view/home_view.dart';
import 'package:vines_love/util/theme.dart';
import 'package:vines_love/widgets/app_button.dart';
import 'package:vines_love/widgets/app_text.dart';
import 'package:vines_love/widgets/app_textfield.dart';


class LoginView extends StatelessWidget {
   LoginView({Key? key}) : super(key: key);

  final authController = Get.put(AuthController());

  final formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Get.width*0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.3,
              ),

              AppText(
                title: "Login",
                size: AppSizes.size_21,
                fontFamily: AppFont.bold,
                color: AppColor.blackColor,
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              textAuth(text: "Email"),
              SizedBox(
                height: Get.height * 0.01,
              ),
              AppTextFied(

                isFill: false,
                isborderline: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                isborderline2: true,
                validator: (value) => EmailValidator.validate(value!)
                    ? null
                    : "Please enter a valid email",
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.04,
                    vertical: Get.height * 0.0185),
                borderRadius: BorderRadius.circular(10),
                borderRadius2: BorderRadius.circular(10),
                borderColor: AppColor.borderColorField,
                hint: "Email",
                hintColor: AppColor.greyColor,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                hintSize: AppSizes.size_12,
                controller: authController.emailController,
                fontFamily: AppFont.medium,
                borderColor2: AppColor.primaryColor,
                maxLines: 1,
              ),
              SizedBox(
                height: Get.height * 0.018,
              ),
              textAuth(text: "Password"),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Obx(() {
                return AppTextFied(
                  isFill: false,
                  isborderline: true,
                  obsecure: authController.isVisible.value,
                  borderColor: AppColor.borderColorField,
                  controller: authController.passwordController,
                  isborderline2: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.04,
                      vertical: Get.height * 0.0185),
                  isVisible: true,
                  isSuffix: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  suffixIcon: IconButton(
                      onPressed: () {
                        authController.updateVisibleStatus();
                      },
                      icon: Icon(
                          authController.isVisible.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: Get.height * 0.022,
                          color: AppColor.blackColor)),
                  fontFamily: AppFont.medium,
                  borderRadius: BorderRadius.circular(10),
                  borderRadius2: BorderRadius.circular(10),
                  hint: "Password",
                  hintColor: AppColor.greyColor,
                  borderColor2: AppColor.primaryColor,
                  maxLines: 1,
                  textInputType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  hintSize: AppSizes.size_12,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }
                    // if(value.length<8)
                    // {
                    //   return 'Password must be greater then 8 character';
                    // }
                    return null;
                  },
                );
              }),

              SizedBox(
                height: Get.height * 0.03,
              ),
              AppButton(
                  buttonWidth: Get.width,
                  buttonRadius: BorderRadius.circular(10),
                  buttonName: "Login",
                  buttonColor: AppColor.primaryColor,
                  textColor: AppColor.whiteColor,
                  onTap: () {
                    // if (formKey.currentState!.validate()) {
                    //
                    //
                    // }
                    Get.to(HomeView());
                  }),








            ],
          ),
        ),
      ),
    );
  }
}
