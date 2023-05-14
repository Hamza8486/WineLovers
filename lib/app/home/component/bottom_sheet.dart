


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vines_love/app/chat/chat_view.dart';
import 'package:vines_love/app/package/view/package_view.dart';
import 'package:vines_love/util/theme.dart';
import 'package:vines_love/widgets/app_button.dart';
import 'package:vines_love/widgets/app_text.dart';

DraggableScrollableSheet openBottomSheet({image, name, price,
}) {
  return DraggableScrollableSheet(
    initialChildSize:0.57,
    minChildSize:0.57,
    maxChildSize:0.57,
    builder: (_, controller) => Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Get.height * 0.01, horizontal: Get.width * 0.05),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                        width: Get.width,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                "assets/images/frames.png",
                                height: Get.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.04,
                            ),



                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(image,
                                        height: Get.height*0.2,
                                      ),
                                    ),
                                  ),
                                ),
                            SizedBox(
                              height: Get.height * 0.025,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: AppText(
                                  title: name,
                                  size: AppSizes.size_16,
                                  maxLines: 2,
                                  overFlow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  color: AppColor.boldBlackColor,
                                  fontFamily: AppFont.semi,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            AppText(
                              title: "Red Wine Dessert wine Liqueur Glass bottle, Wine bottle, wine Glass, food, distilled Beverage",
                              size: AppSizes.size_13,
                              maxLines: 2,
                              overFlow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              color: AppColor.boldBlackColor,
                              fontFamily: AppFont.medium,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),

                          ],
                        ),
                      )
                    ),

                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: "Total Amount",
                  size: AppSizes.size_15,
                  maxLines: 2,
                  overFlow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  color: AppColor.greyColor,
                  fontFamily: AppFont.medium,
                  fontWeight: FontWeight.w500,
                ),
                AppText(
                  title: price,
                  size: AppSizes.size_15,
                  maxLines: 2,
                  overFlow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  color: AppColor.boldBlackColor,
                  fontFamily: AppFont.medium,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            SizedBox(height: Get.height*0.03,),

            Row(
              children: [
                Expanded(
                  child: AppButton(
                    buttonWidth: Get.width,
                    buttonHeight: Get.height * 0.055,
                    buttonName: "Buy Now",
                    fontFamily: AppFont.medium,
                    textSize: Get.height * 0.017,
                    buttonColor: AppColor.primaryColor,
                    textColor: AppColor.whiteColor,
                    onTap:(){
                      Get.to(PackageView());
                    },
                    buttonRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: Get.width*0.04,),
                Expanded(
                  child: AppButton(
                    buttonWidth: Get.width,
                    buttonHeight: Get.height * 0.055,
                    buttonName: "Chat Seller",
                    fontFamily: AppFont.medium,
                    textSize: Get.height * 0.017,
                    buttonColor: AppColor.primaryColor,
                    textColor: AppColor.whiteColor,
                    onTap:(){
                      Get.to(ChatScreen());
                    },
                    buttonRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}