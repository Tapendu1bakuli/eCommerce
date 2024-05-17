import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/app/modules/home/controller/home_controller.dart';
import 'package:ecommerce/app/modules/home/widgets/common_appbar.dart';
import 'package:ecommerce/device_manager/screen_constants.dart';
import 'package:ecommerce/utils/colors/app_colors.dart';
import 'package:ecommerce/utils/image_utils/image_utils.dart';
import 'package:ecommerce/utils/text_utils/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../../common/common_text_form_field.dart';
import '../../../../utils/TextStyles.dart';

class HomeScreen extends GetView<HomeController> {
   HomeScreen({super.key});
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppbar(
          leading: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenConstant.defaultWidthTen),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColor.primaryAppbarLeadingContainerColor),
              height: ScreenConstant.screenHeightMinimum,
              width: ScreenConstant.screenWidthMinimum,
              child: Image.asset(
                ImageUtils.leadingAppbarIcon,
                scale: 2,
              ),
            ),
          ),
          isCenteredTitle: true,
          title: Image.asset(
            ImageUtils.centerAppbarIcon,
            scale: 1,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenConstant.defaultWidthTwenty),
              child: Image.asset(
                ImageUtils.rightAppbarIcon,
                scale: 1,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: ScreenConstant.defaultHeightFifteen,
                horizontal: ScreenConstant.defaultWidthTen,
              ),
              child: DefaultEditText(
                onSaved: (input) {},
                // onSubmit: controller.onSubmit.value = false,
                type: Type.searchField,
                prefixIcon: Container(),
                style: TextStyles.textFieldHintStyle,
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: TextEditingController(),
                hintText: AppStrings.searchHint.tr,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenConstant.defaultWidthTwenty,
                      vertical: ScreenConstant.defaultHeightTen),
                  child: Text(
                    AppStrings.allFeatured,
                    style: TextStyles.textBold,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenConstant.defaultWidthTen,
                      vertical: ScreenConstant.defaultHeightTen),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: ScreenConstant.defaultHeightFour,
                          horizontal: ScreenConstant.defaultWidthTen),
                      decoration: BoxDecoration(
                        color: CustomColor.primaryWhite,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: CustomColor.shadowColor,
                              blurRadius: 5.0,
                              offset: Offset(0.1, 0.0))
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(
                            AppStrings.sort.tr,
                            style: TextStyles.textRegular,
                          ),
                          Container(
                            width: 5,
                          ),
                          Image.asset(
                            ImageUtils.sort,
                            scale: 3,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: ScreenConstant.defaultWidthTwenty),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: ScreenConstant.defaultHeightFour,
                          horizontal: ScreenConstant.defaultWidthTen),
                      decoration: BoxDecoration(
                        color: CustomColor.primaryWhite,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                              color: CustomColor.shadowColor,
                              blurRadius: 5.0,
                              offset: Offset(0.1, 0.0))
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(
                            AppStrings.filter.tr,
                            style: TextStyles.textRegular,
                          ),
                          Container(
                            width: 5,
                          ),
                          Image.asset(
                            ImageUtils.filter,
                            scale: 3,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(height: ScreenConstant.defaultHeightTen,),
            Container(
              height: ScreenConstant.screenHeightEighth,
              margin: EdgeInsets.symmetric(
                horizontal: ScreenConstant.defaultWidthTen,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenConstant.defaultWidthTen,
                  vertical: ScreenConstant.defaultHeightTen),
              decoration: BoxDecoration(
                  color: CustomColor.primaryWhite,
                  borderRadius: BorderRadius.circular(10)),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: controller.beautyTypeModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          controller.beautyTypeModel[index].image ?? "",
                          height: ScreenConstant.defaultHeightFifty,
                        ),
                        Text(
                          controller.beautyTypeModel[index].title ?? "",
                          style: TextStyles.textSmallRegular,
                        )
                      ],
                    );
                  }, separatorBuilder: (BuildContext context, int index) { return Container(width: ScreenConstant.defaultWidthTwenty,); },),
            ),
            Container(
              height: ScreenConstant.screenHeightThird,
              decoration: BoxDecoration(),
              child: Stack(children: [
                CarouselSlider(
                  items: controller.carousalModel
                      .map((item) => Image.asset(item.image ?? ""))
                      .toList(),
                  carouselController:
                  controller.homeCarousalController,
                  options: CarouselOptions(
                    height: Get.height,
                    onPageChanged: (int index,
                        CarouselPageChangedReason reason) {
                      controller.currentIndex.value = index;
                    },
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.95,
                  ),
                ),
                Obx(() => Positioned(
                  bottom: 0,
                  right: ScreenConstant.screenWidthFifth,
                  left: ScreenConstant.screenWidthFifth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      controller.carousalModel.length,
                          (index) => Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: controller
                              .currentIndex.value ==
                              index?ScreenConstant.defaultWidthTen+3:ScreenConstant.defaultWidthTen,
                          height:controller
                              .currentIndex.value ==
                              index?ScreenConstant.defaultHeightTen+3:
                          ScreenConstant.defaultHeightTen,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10),
                              color: controller
                                  .currentIndex.value ==
                                  index
                                  ? CustomColor.selectedColor
                                  : CustomColor.notSelectedColor),
                        ),
                      ),
                    ),
                  ),
                )),
              ]),
            ),
            Container(height: ScreenConstant.defaultHeightTwentyThree,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen,vertical: ScreenConstant.defaultHeightTen),
              decoration: BoxDecoration(color: CustomColor.bluishContainer,borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.dealOfTheDay,style: TextStyles.mediumText,),
                      Container(height: ScreenConstant.defaultHeightTen,),
                      Row(
                        children: [
                          Image.asset(ImageUtils.clock,scale: 1.5,),
                          Container(width: 5,),
                          Text(AppStrings.hour,style: TextStyles.regularText,),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen,vertical: ScreenConstant.defaultHeightFour),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: CustomColor.primaryWhite,)
                    ),
                    child: Row(
                      children: [
                        Text(AppStrings.viewAll,style: TextStyles.semiBoldText,),
                        Icon(Icons.arrow_forward,color: CustomColor.primaryWhite,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(height: ScreenConstant.defaultHeightTwentyThree,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              height: ScreenConstant.screenHeightThird,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, i) {
                  return  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: ScreenConstant.defaultWidthOneSeventy,
                      decoration: BoxDecoration(color: CustomColor.primaryWhite),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(ImageUtils.show,fit: BoxFit.fitWidth),
                          Container(height: ScreenConstant.defaultHeightTen,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Women Printed Kurta",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 12),),
                          ),
                          Container(height: ScreenConstant.defaultHeightTen,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
                            child: Text("Neque porro quisquam est qui dolorem ipsum quia",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 10,fontFamily: "Montserrat"),),
                          ),
                          Container(height: ScreenConstant.defaultHeightTen,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
                            child: Text("₹1500",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 12,fontFamily: "MontserratMedium"),),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
                            child: Row(
                              children: [
                                Text("₹2499",style: TextStyles.mediumText.copyWith(color: CustomColor.discountedPrice,fontSize: 12,fontFamily: "MontserratMedium",decoration: TextDecoration.lineThrough,decorationColor: CustomColor.discountedPrice),),
                                Container(width: 5,),
                                Text("40% Off",style: TextStyles.mediumText.copyWith(color: CustomColor.offColor,fontSize: 12,fontFamily: "MontserratMedium",decoration: TextDecoration.lineThrough,decorationColor: CustomColor.discountedPrice),),
                              ],
                            ),
                          ),
                          Container(height: ScreenConstant.defaultHeightTen-5,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
                            child: Row(
                              children: [
                                RatingBarIndicator(
                                  rating: 2.5,
                                  itemCount: 5,
                                  itemSize: 15.0,
                                  unratedColor: CustomColor.discountedPrice,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Container(width: 10,),
                                Text("56890",style: TextStyles.mediumText.copyWith(color: CustomColor.discountedPrice,fontSize: 10,fontFamily: "MontserratMedium"),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }, separatorBuilder: (BuildContext context, int index) { return Container(width: ScreenConstant.defaultWidthTwenty,); },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwentyThree,horizontal: ScreenConstant.defaultWidthTen),
              margin: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen,vertical: ScreenConstant.defaultHeightFifteen),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: CustomColor.primaryWhite),child: Row(
             children: [
               Image.asset(ImageUtils.offers),
               Container(width: ScreenConstant.defaultWidthTwenty,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Text(AppStrings.specialOffers,style: TextStyles.textBold.copyWith(fontSize: 16,fontFamily: "MontserratMedium"),),
                       Container(width: ScreenConstant.defaultWidthTen,),
                        Image.asset(ImageUtils.emoji,scale: 1.5,)
                     ],
                   ),
                   Container(height: ScreenConstant.defaultHeightTen,),
                   Text(AppStrings.weMakeSure,style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 10,fontFamily: "Montserrat"),maxLines: 2,overflow: TextOverflow.visible,)
                 ],
               )
             ], 
            ),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              child: Image.asset(ImageUtils.mac),
            )

          ],
        ),
      ),
    );
  }
}
