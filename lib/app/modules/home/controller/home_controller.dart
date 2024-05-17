import 'package:carousel_slider/carousel_controller.dart';
import 'package:ecommerce/app/modules/home/views/cart.dart';
import 'package:ecommerce/app/modules/home/views/home_views.dart';
import 'package:ecommerce/app/modules/home/views/search.dart';
import 'package:ecommerce/app/modules/home/views/settings.dart';
import 'package:ecommerce/app/modules/home/views/wish_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../utils/image_utils/image_utils.dart';
import '../../../../utils/text_utils/app_strings.dart';
import '../../../models/beauty_type_model.dart';
import '../../../models/carousal_image_model.dart';
import '../../../routes/routes.dart';

class HomeController extends GetxController{
  List<BeautyTypeModel> beautyTypeModel = [
    BeautyTypeModel(title: AppStrings.beauty,image: ImageUtils.beauty1,ontap: (){}),
    BeautyTypeModel(title: AppStrings.fashion,image: ImageUtils.beauty2,ontap: (){}),
    BeautyTypeModel(title: AppStrings.kids,image: ImageUtils.beauty3,ontap: (){}),
    BeautyTypeModel(title: AppStrings.man,image: ImageUtils.beauty4,ontap: (){}),
    BeautyTypeModel(title: AppStrings.woman,image: ImageUtils.beauty5,ontap: (){}),
    BeautyTypeModel(title: AppStrings.gifts,image: ImageUtils.beauty5,ontap: (){}),
  ];
  CarouselController homeCarousalController = CarouselController();
  RxInt currentIndex = 0.obs;
  RxInt selectedIndex = 0.obs;
  List<PersistentTabConfig> tabs() => [
    PersistentTabConfig(
      screen: HomeScreen(),
      item: ItemConfig(
        icon: const Icon(Icons.home_outlined),
        title: "Home",
      ),
    ),
    PersistentTabConfig(
      screen: WishListView(),
      item: ItemConfig(
        icon: const Icon(Icons.message),
        title: "Messages",
      ),
    ),
    PersistentTabConfig(
      screen: const CartView(),
      item: ItemConfig(
        icon: const Icon(Icons.settings,color: Colors.white,),
      ),
    ),
    PersistentTabConfig(
      screen: const SearchView(),
      item: ItemConfig(
        icon: const Icon(Icons.settings),
        title: "Settings",
      ),
    ),
    PersistentTabConfig(
      screen: const SettingsView(),
      item: ItemConfig(
        icon: const Icon(Icons.settings),
        title: "Settings",
      ),
    ),
  ];
  List<CarousalImageModel> carousalModel = [
    CarousalImageModel(title: "Dance",subtitleLarge: "Party Night",subtitleMid: "Know More Details Here",image: ImageUtils.carousal1,ontap: (){}),
    CarousalImageModel(title: "Dance",subtitleLarge: "Party Night",subtitleMid: "Know More Details Here",image: ImageUtils.carousal1,ontap: (){}),
    CarousalImageModel(title: "Dance",subtitleLarge: "Party Night",subtitleMid: "Know More Details Here",image: ImageUtils.carousal1,ontap: (){}),
  ];
}