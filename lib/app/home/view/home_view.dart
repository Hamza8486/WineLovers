
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vines_love/app/home/component/bottom_sheet.dart';
import 'package:vines_love/util/theme.dart';
import 'package:vines_love/widgets/app_text.dart';
import 'package:vines_love/widgets/app_textfield.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  List<String> imageList = [
    'assets/images/vine4.jpeg',
    'assets/images/vine3.jpeg',
  ];

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: AppPaddings.mainHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.07,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.lightAppColor2.withOpacity(0.25),
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    child: AppTextFied(

                      isborderline: true,
                      isFill: true,

                      isShowCursor: false,
                      isReadOnly: true,
                      isSuffix: true,


                      hint: "Search for vines",
                      hintColor: AppColor.greyColor,
                      fontFamily: AppFont.regular,
                      hintSize: Get.height * 0.014,
                      prefixIcon: Icon(Icons.search,
                      size: 25,
                      ),

                      padding: EdgeInsets.symmetric(
                          vertical: Get.height * 0.014,
                          horizontal: Get.width * 0.02),
                      fillColor: AppColor.lightAppColor2.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(40),
                      borderRadius1: BorderRadius.circular(40),
                      borderRadius2: BorderRadius.circular(40),
                      isborderline2: true,
                      isborderline1: true,

                      isPrefix: true,
                    ),
                  ),
                ),




              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: Get.height * 0.015,
                ),
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    pageSnapping: false,
                    height: Get.height * 0.2,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    pauseAutoPlayInFiniteScroll: false,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration: const Duration(milliseconds: 400),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  items: imageList.map((imageUrl) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(imageUrl,
                      fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                ),

                SizedBox(
                  height: Get.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                        title: "All Wine Category ",
                        size: AppSizes.size_16,
                        fontFamily: AppFont.semi,
                        fontWeight: FontWeight.w600,
                        color: AppColor.boldBlackColor),
                    SizedBox()
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: Get.width/Get.height*1.9,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 10),
                    itemCount: 6,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                         onTap: (){
                           showModalBottomSheet(
                               backgroundColor: Colors.transparent,
                               isScrollControlled: true,
                               isDismissible: true,
                               context: context,
                               builder: (context) => openBottomSheet(

                                   price:  index==0?
                                   "25\$":index==0?
                                   "25\$":index==1?
                                   "H25\$":index==2?
                                   "25\$":index==3?
                                   "25\$":index==4?
                                   "25\$":"25\$",
                                 name:  index==0?
                                 "Wine accessory":index==0?
                                 "Red Champagne":index==1?
                                 "Heineken Wine":index==2?
                                 "Lanson champagne":index==3?
                                 "Champagne Sparkling":index==4?
                                 "Distilled beverag":"beverage Wine",
                                 image:  index==0?
                                 "assets/images/vine11.png":index==1?
                                 "assets/images/vine7.png":index==2?
                                 "assets/images/vine8.png":index==3?
                                 "assets/images/vine9.png":index==4?
                                 "assets/images/vine6.png":"assets/images/vine8.png",
                               ));
                         },
                          child: Column(
                            children: [
                              Card(
                                margin: EdgeInsets.zero,
                                color: AppColor.whiteColor,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: AppColor.borderColorField.withOpacity(0.5))),
                                child: Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: Get.height*0.03,),
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                        child: Image.asset(
                                         index==0?
                                          "assets/images/vine11.png":index==1?
                                         "assets/images/vine7.png":index==2?
                                         "assets/images/vine8.png":index==3?
                                         "assets/images/vine9.png":index==4?
                                         "assets/images/vine6.png":"assets/images/vine8.png",
                                          height: Get.height*0.15,

                                        ),
                                      ),


                                      SizedBox(height: Get.height*0.014,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: SizedBox(
                                          width: Get.width,
                                          child: AppText(
                                            title:
                                            index==0?
                                            "Wine accessory":index==0?
                                            "Red Champagne":index==1?
                                            "Heineken Wine":index==2?
                                            "Lanson champagne":index==3?
                                            "Champagne Sparkling":index==4?
                                            "Distilled beverag":"beverage Wine",
                                            size: AppSizes.size_14,
                                            maxLines: 2,
                                            overFlow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            color: AppColor.boldBlackColor,
                                            fontFamily: AppFont.semi,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Get.height*0.018,),

                                    ],
                                  ),
                                ),
                              ),


                            ],
                          ));
                    }),

              ],),
            )),

          ],
        ),
      ),
    );
  }
}
