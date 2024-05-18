import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../device_manager/screen_constants.dart';
import '../../../../utils/TextStyles.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/image_utils/image_utils.dart';

class CartView extends StatelessWidget {
  CartView({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenConstant.defaultWidthTen),
            child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColor.primaryAppbarLeadingContainerColor),
                height: ScreenConstant.screenHeightMinimum,
                width: ScreenConstant.screenWidthMinimum,
                child: Icon(Icons.shopping_cart_outlined)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: ScreenConstant.screenHeightThird,
            decoration: BoxDecoration(),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CarouselSlider(
                  items: controller.carousalModel
                      .map((item) => Image.asset(item.image ?? ""))
                      .toList(),
                  carouselController: controller.homeCarousalController,
                  options: CarouselOptions(
                    height: Get.height,
                    onPageChanged:
                        (int index, CarouselPageChangedReason reason) {
                      controller.currentIndex.value = index;
                    },
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.95,
                  ),
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
                            width: controller.currentIndex.value == index
                                ? ScreenConstant.defaultWidthTen + 3
                                : ScreenConstant.defaultWidthTen,
                            height: controller.currentIndex.value == index
                                ? ScreenConstant.defaultHeightTen + 3
                                : ScreenConstant.defaultHeightTen,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: controller.currentIndex.value == index
                                    ? CustomColor.selectedColor
                                    : CustomColor.notSelectedColor),
                          ),
                        ),
                      ),
                    ),
                  )),
            ]),
          ),
          Container(
            height: ScreenConstant.defaultHeightTwentyThree,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenConstant.defaultWidthTen),
            child: Text(
              "Size: 7UK",
              style: TextStyles.semiBoldText.copyWith(color: CustomColor.black),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenConstant.defaultWidthTen),
              child: Obx(
                () => Container(
                  height: ScreenConstant.defaultHeightFifty,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.drawerListModel.length,
                      itemBuilder: (BuildContext context, int index) {
                        // return HomeDrawerListTileWidget(
                        //     leadingImage: controller.drawerListModel[index].icon,
                        //     titleText: controller.drawerListModel[index].title,
                        //     titleTextStyles: TextStyles.drawerSubTitleBold,
                        //     onTap: () {
                        //       controller.drawerListModel.forEach(
                        //               (element) => element.isColoured = false);
                        //       debugPrint("index:$index");
                        //       controller.drawerListModel[index].isColoured =
                        //       !controller
                        //           .drawerListModel[index].isColoured!;
                        //       controller.drawerListModel.refresh();
                        //       controller.drawerListModel[index].ontap!();
                        //     },
                        //     isColoured: controller.drawerListModel[index].isColoured,
                        //     leadingImageHeight:
                        //     ScreenConstant.defaultHeightTwentyThree);
                        return InkWell(
                          onTap: () {
                            controller.drawerListModel.forEach(
                                (element) => element.isColoured = false);
                            debugPrint("index:$index");
                            controller.drawerListModel[index].isColoured =
                                !controller.drawerListModel[index].isColoured!;
                            controller.drawerListModel.refresh();
                            controller.drawerListModel[index].ontap!();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
                            decoration: BoxDecoration(
                              color: controller.drawerListModel[index].isColoured?? false?CustomColor.bottomSelect:CustomColor.primaryWhite,
                              borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: CustomColor.bottomSelect)),
                            child: Center(
                                child: Text(
                                    controller.drawerListModel[index].title ??
                                        "",style: TextStyles.mediumText.copyWith(color: controller.drawerListModel[index].isColoured?? false?CustomColor.primaryWhite:CustomColor.bottomSelect),)),
                          ),
                        );
                      }, separatorBuilder: (BuildContext context, int index) { return Container(width: ScreenConstant.defaultWidthTen,); },),
                ),
              )),
          Container(height: ScreenConstant.defaultHeightTen,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Nike Sneakers",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 12),),
          ),
          Container(height: ScreenConstant.defaultHeightTen,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthTen),
            child: Text("Vision Alta Men's Shoes Size (All Colours)",style: TextStyles.mediumText.copyWith(color: CustomColor.black,fontSize: 10,fontFamily: "Montserrat"),),
          ),
          Container(height: ScreenConstant.defaultHeightTen,),
        ],
      ),
    );
  }
}
