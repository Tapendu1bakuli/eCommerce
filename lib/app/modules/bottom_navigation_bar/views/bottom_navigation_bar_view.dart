import 'package:ecommerce/app/modules/home/controller/home_controller.dart';
import 'package:ecommerce/app/modules/home/views/cart.dart';
import 'package:ecommerce/app/modules/home/views/home_views.dart';
import 'package:ecommerce/app/modules/home/views/search.dart';
import 'package:ecommerce/app/modules/home/views/settings.dart';
import 'package:ecommerce/app/modules/home/views/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import '../../../../utils/colors/app_colors.dart';

class PersistenBottomNavBarDemo extends StatelessWidget {
   PersistenBottomNavBarDemo({super.key});
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
      controller: _homeController.motionTabBarController, // Add this controller if you need to change your tab programmatically
      initialSelectedTab: "Home",
      useSafeArea: true, // default: true, apply safe area wrapper
      labels: const ["Home", "WishList", "Cart","Search",  "Settings"],
      icons: const [Icons.home_outlined, Icons.favorite_border, Icons.shopping_cart_outlined, Icons.search,Icons.settings],

      // optional badges, length must be same with labels
      tabSize: 50,
      tabBarHeight: 55,
      textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      tabIconColor: CustomColor.black,
      tabIconSize: 28.0,
      tabIconSelectedSize: 30.0,
      tabSelectedColor: CustomColor.primaryWhite,
      tabIconSelectedColor: CustomColor.bottomSelectedColor,
      tabBarColor: Colors.white,
      onTabItemSelected: (int value) {
          _homeController.motionTabBarController!.index = value;
      },
    ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
    controller: _homeController.motionTabBarController,
    children: <Widget>[
    HomeScreen(),
    const WishListView(),
    CartView(),
    const SearchView(),
      const SettingsView()
    ],
    ),
    );
  }
}