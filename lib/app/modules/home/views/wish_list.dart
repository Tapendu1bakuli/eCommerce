import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../../common/common_text_form_field.dart';
import '../../../../device_manager/screen_constants.dart';
import '../../../../utils/TextStyles.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/image_utils/image_utils.dart';
import '../../../../utils/text_utils/app_strings.dart';
import '../widgets/common_appbar.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "52,082+ ${AppStrings.items}",
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
              padding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwentyThree,horizontal: ScreenConstant.defaultWidthTen),
            height: Get.height,
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) => index % 2 == 0
                  ? _buildTallCard(index)
                  : _buildShortCard(index),
              staggeredTileBuilder: (int index) => index % 2 == 0
                  ? const StaggeredTile.fit(1)
                  : const StaggeredTile.fit(1),
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 20.0,
            )
          )
        ],
      ),
    );
  }

  Widget _buildTallCard(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: ScreenConstant.screenHeightTowAndHalfPointFive,
        width: ScreenConstant.defaultWidthOneSeventy,
        decoration: const BoxDecoration(color: CustomColor.primaryWhite),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height:ScreenConstant.screenHeightFifth,
                width: Get.width,
                child: Image.network("https://media1.popsugar-assets.com/files/thumbor/b0rTsnJv_zrjHN12CqokFY4T_JQ=/0x0:1456x1456/fit-in/792x792/filters:format_auto():upscale()/2023/06/12/874/n/1922564/dbb82869648779136c7a15.00616962_.jpg",fit: BoxFit.cover,)),
            Container(height: ScreenConstant.defaultHeightTen,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Title",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 12),),
            ),
            Container(height: ScreenConstant.defaultHeightTen,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              child: Text("Subtitle",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 10,fontFamily: "Montserrat"),),
            ),
            Container(height: ScreenConstant.defaultHeightTen,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              child: Text("₹34,50",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 12,fontFamily: "MontserratMedium"),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              child: Row(
                children: [
                  Text("₹2,000",style: TextStyles.mediumText.copyWith(color: CustomColor.discountedPrice,fontSize: 12,fontFamily: "MontserratMedium",decoration: TextDecoration.lineThrough,decorationColor: CustomColor.discountedPrice),),
                  Container(width: 5,),
                  Text("20% Off",style: TextStyles.mediumText.copyWith(color: CustomColor.offColor,fontSize: 12,fontFamily: "MontserratMedium",decoration: TextDecoration.lineThrough,decorationColor: CustomColor.discountedPrice),),
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
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  Container(width: 10,),
                  Text("23456",style: TextStyles.mediumText.copyWith(color: CustomColor.discountedPrice,fontSize: 10,fontFamily: "MontserratMedium"),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShortCard(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: ScreenConstant.defaultWidthOneSeventy,
        decoration: const BoxDecoration(color: CustomColor.primaryWhite),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height:ScreenConstant.screenHeightSixth,
                width: Get.width,
                child: Image.network("https://media1.popsugar-assets.com/files/thumbor/b0rTsnJv_zrjHN12CqokFY4T_JQ=/0x0:1456x1456/fit-in/792x792/filters:format_auto():upscale()/2023/06/12/874/n/1922564/dbb82869648779136c7a15.00616962_.jpg",fit: BoxFit.cover,)),
            Container(height: ScreenConstant.defaultHeightTen,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Title",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 12),),
            ),
            Container(height: ScreenConstant.defaultHeightTen,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              child: Text("Subtitle",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 10,fontFamily: "Montserrat"),),
            ),
            Container(height: ScreenConstant.defaultHeightTen,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              child: Text("₹34,50",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 12,fontFamily: "MontserratMedium"),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
              child: Row(
                children: [
                  Text("₹2,000",style: TextStyles.mediumText.copyWith(color: CustomColor.discountedPrice,fontSize: 12,fontFamily: "MontserratMedium",decoration: TextDecoration.lineThrough,decorationColor: CustomColor.discountedPrice),),
                  Container(width: 5,),
                  Text("20% Off",style: TextStyles.mediumText.copyWith(color: CustomColor.offColor,fontSize: 12,fontFamily: "MontserratMedium",decoration: TextDecoration.lineThrough,decorationColor: CustomColor.discountedPrice),),
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
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  Container(width: 10,),
                  Text("23456",style: TextStyles.mediumText.copyWith(color: CustomColor.discountedPrice,fontSize: 10,fontFamily: "MontserratMedium"),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

