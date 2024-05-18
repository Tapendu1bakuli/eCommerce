import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import '../../../../utils/image_utils/image_utils.dart';
import '../../../../utils/text_utils/app_strings.dart';
import '../../../models/beauty_type_model.dart';
import '../../../models/carousal_image_model.dart';
import '../../../models/money_model_view.dart';


class HomeController extends GetxController with GetSingleTickerProviderStateMixin{

  @override
  void onInit()async {
    // TODO: implement onInit
    super.onInit();
    motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }
  @override
  void dispose() {
    print("Dispose");
    super.dispose();
  }
  @override
  void onClose() {
    print("onClose");
    super.dispose();
  }


  toggleAnimation() {
  }

  RxBool isSmall = false.obs;
  RxBool changeSize(int index){
    if(index == 0){
      isSmall.value = true;
    }
    return isSmall;
  }

  final data = Rx<Map<String, dynamic>>({});
  MotionTabBarController? motionTabBarController;
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
  List<CarousalImageModel> carousalModel = [
    CarousalImageModel(title: "Dance",subtitleLarge: "Party Night",subtitleMid: "Know More Details Here",image: ImageUtils.carousal1,ontap: (){}),
    CarousalImageModel(title: "Dance",subtitleLarge: "Party Night",subtitleMid: "Know More Details Here",image: ImageUtils.carousal1,ontap: (){}),
    CarousalImageModel(title: "Dance",subtitleLarge: "Party Night",subtitleMid: "Know More Details Here",image: ImageUtils.carousal1,ontap: (){}),
  ];
  RxList<PriceModel> drawerListModel = [
    PriceModel(title: "6 UK",isColoured: false),
   PriceModel(title: "7 UK",isColoured: false),
    PriceModel(title: "8 UK",isColoured: false),
    PriceModel(title: "9 UK",isColoured: false),
    PriceModel(title: "10 UK",isColoured: false),
  ].obs;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


}
