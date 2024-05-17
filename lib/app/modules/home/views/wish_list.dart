import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
