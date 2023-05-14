import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vines_love/util/theme.dart';
import 'package:vines_love/widgets/app_text.dart';
import 'package:vines_love/widgets/app_textfield.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   bool isKeyBoard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: Column(
        children: [
          Material(
            color: AppColor.whiteColor,
            elevation: 1,
            child: SizedBox(
              width: Get.width,
              height: Get.height / 8.5 ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: Get.height*0.02,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.02,
                        vertical: Get.height * 0.01 ),
                    child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10),
                        child:    Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Icon(Icons.arrow_back_outlined,
                                    size: AppSizes.size_14,
                                  ),
                                )),
                            SizedBox(width: Get.width*0.04,),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/person.png',
                                height: Get.height * 0.05,
                                width: Get.height * 0.05,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: Get.width*0.04,),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: AppText(title: "Nick John",
                              color: AppColor.boldBlackColor,
                                fontFamily: AppFont.semi,
                                fontWeight: FontWeight.w700,
                                size: Get.height*0.02,
                              ),
                            )

                            ]



                                ),





                              ),
                            ),

                          ],
                        )
                    ),
                  ),
          Expanded(
            child: SingleChildScrollView(

              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15),
                    itemBuilder: (context, index) {
                      // print(jsonEncode(jobController.activeList[index]));
                      // print(jsonEncode(P));

                      return
                      index==0?
                        Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            padding: const EdgeInsets.only(
                                left: 12,
                                right: 12,
                                top: 10,
                                bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey
                                    .withOpacity(.5),
                                borderRadius: BorderRadius.circular(10)


                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width:150,
                                  child: Text(
                                    "Hello",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      // color: AppColors.blackColor,
                                      color:  Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "11:23 pm",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    // color: AppColors.blackColor,
                                    color:  Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):
                      index==1?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            padding: const EdgeInsets.only(
                                left: 12,
                                right: 12,
                                top: 10,
                                bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey
                                    .withOpacity(.5),
                                borderRadius: BorderRadius.circular(10)


                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width:150,
                                  child: Text(
                                    "How are you?",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      // color: AppColors.blackColor,
                                      color:  Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fine And You?",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    // color: AppColors.blackColor,
                                    color:  Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):index==2?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            padding: const EdgeInsets.only(
                                left: 12,
                                right: 12,
                                top: 10,
                                bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey
                                    .withOpacity(.5),
                                borderRadius: BorderRadius.circular(10)


                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width:150,
                                  child: Text(
                                    "Fine",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      // color: AppColors.blackColor,
                                      color:  Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "11:23 pm",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    // color: AppColors.blackColor,
                                    color:  Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ): Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            padding: const EdgeInsets.only(
                                left: 12,
                                right: 12,
                                top: 10,
                                bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey
                                    .withOpacity(.5),
                                borderRadius: BorderRadius.circular(10)


                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width:150,
                                  child: Text(
                                    "Hello",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      // color: AppColors.blackColor,
                                      color:  Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "11:23 pm",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    // color: AppColors.blackColor,
                                    color:  Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );





                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Get.height*0.02,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
            child: Row(
              children: [
                Expanded(
                  child: AppTextFied(
                      isborderline: true,
                      maxLines: 1,
                      isFill: true,

                      isborderline1: true,

                      fillColor: Colors.grey.withOpacity(0.1),
                      isborderline2: true,
                      borderColor2: Colors.grey.withOpacity(0.2),
                      borderRadius1: BorderRadius.circular(10),
                      borderRadius2: BorderRadius.circular(10),
                      padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.025,
                          vertical: Get.height * 0.016),
                      borderRadius: BorderRadius.circular(10),
                      borderColor: Colors.grey.withOpacity(0.2),
                      textInputAction: TextInputAction.done,
                      fontFamily: AppFont.medium,
                      textInputType: TextInputType.name,
                      hintColor: AppColor.blackColor,
                      hint: "Write a comment",
                      hintSize: AppSizes.size_14),
                ),
                SizedBox(
                  width: Get.width * 0.04,
                ),
                GestureDetector(
                  onTap:

                      (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      child: Center(
                          child: Icon(
                            Icons.send,
                            color: Colors.black,
                            size: Get.height * 0.028,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: Get.height*0.02,),


                ],
              ),

    );
  }
}