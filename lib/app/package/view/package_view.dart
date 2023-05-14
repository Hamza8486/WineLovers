
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vines_love/util/theme.dart';
import 'package:vines_love/widgets/app_button.dart';
import 'package:vines_love/widgets/app_text.dart';

class PackageView extends StatefulWidget {
  PackageView({Key? key, t}) : super(key: key);

  @override
  State<PackageView> createState() => _PackageViewState();
}

class _PackageViewState extends State<PackageView> {
  int currentIndex = -1;
  String? price;
  int? numberOfMonth;
  int? pacakgeId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
              setState(() {

              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(Icons.arrow_back)
              ),
            )),
        title: AppText(title: "Wine Subscription",
          color: AppColor.boldBlackColor,
          size: AppSizes.size_16,
          fontWeight: FontWeight.w600,
          fontFamily: AppFont.semi,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Get.width*0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: paymentList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                        price = paymentList[index].price;
                        numberOfMonth = paymentList[index].numberOfMonth;
                        pacakgeId = paymentList[index].packageId;
                        print('package id:::::::${pacakgeId}');
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: currentIndex == index
                                    ? paymentList[index].borderColor
                                    : Color(0xFFFFFFF),
                                width: 2),
                            color: paymentList[index].PlanColor,
                            borderRadius: BorderRadius.circular(10)),
                        height: Get.height*0.13,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        paymentList[index].plan,
                                        style: GoogleFonts.lato(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        paymentList[index].description,
                                        style: GoogleFonts.lato(fontSize: 14),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: paymentList[index].price,
                                            style: GoogleFonts.lato(
                                                color: Color(0xFF000000),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: ' PKR',
                                                style: GoogleFonts.lato(
                                                    color: Color(0xFF000000),
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              )
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            currentIndex == index
                                ? Expanded(
                              flex: 2,
                              child: Container(
                                child: Stack(
                                  children: [
                                    Positioned(
                                        bottom: 3.0,
                                        right: 4.0,
                                        child: SvgPicture.asset(
                                          paymentList[index].image,
                                          height: 80,
                                        )),
                                    Positioned(
                                        top: 10.0,
                                        right: 8.0,
                                        child: SvgPicture.asset(
                                            paymentList[index]
                                                .checkImage)),
                                  ],
                                ),
                              ),
                            )
                                : SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            Spacer(),
            AppButton(
              buttonWidth: Get.width,
              buttonHeight: Get.height * 0.055,
              buttonName: "Buy",
              fontFamily: AppFont.medium,
              textSize: Get.height * 0.017,
              buttonColor: AppColor.primaryColor,
              textColor: AppColor.whiteColor,
              onTap:(){

              },
              buttonRadius: BorderRadius.circular(10),
            )

          ],
        ),
      ),
    );
  }
}

class PaymentScreenModel {
  String plan;
  String description;
  String price;
  String image;
  String checkImage;
  Color PlanColor;
  bool isVisibility;
  int? packageId;
  int? numberOfMonth;
  Color borderColor;

  PaymentScreenModel(
      {required this.plan,
        required this.description,
        required this.price,
        required this.image,
        required this.checkImage,
        required this.PlanColor,
        required this.isVisibility,
        required this.packageId,
        required this.numberOfMonth,
        required this.borderColor});
}

List<PaymentScreenModel> paymentList = [
  PaymentScreenModel(
      price: '20\$',
      description:
      'Let the user book Plan with you for Wine\nValid for 1 month',
      plan: 'Basic Plan',
      image: 'assets/images/payment_plan_pic.svg',
      checkImage: 'assets/images/basic_plan_checkbox.svg',
      PlanColor: Color(0xFFFFE7A9),
      borderColor: Color(0xFFB44D02),
      packageId: 7,
      numberOfMonth: 1,
      isVisibility: false),
  PaymentScreenModel(
      price: '40\$',
      description:
      'Let the user book Plan with you for Wine\nValid for 3 month',
      plan: 'Standard Plan',
      image: 'assets/images/payment_plan_pic.svg',
      checkImage: 'assets/images/standard_plan_checkbox.svg',
      PlanColor: Color(0xFFC4E9FB),
      borderColor: Color(0xFF002A68),
      packageId: 8,
      numberOfMonth: 3,
      isVisibility: false),
  PaymentScreenModel(
      price: '60\$',
      description:
      'Let the user book Plan with you for Wine\nValid for 8 month',
      plan: 'Pro Plan',
      image: 'assets/images/payment_plan_pic.svg',
      checkImage: 'assets/images/pro_plan_checkbox.svg',
      PlanColor: Color(0xFFFFE8DA),
      packageId: 8,
      numberOfMonth: 8,
      borderColor: Color(0xFFA60045),
      isVisibility: false),
];
