import 'package:ecommerce/app/modules/home/controller/home_controller.dart';
import 'package:ecommerce/app/modules/home/views/cart.dart';
import 'package:ecommerce/app/modules/home/views/home_views.dart';
import 'package:ecommerce/app/modules/home/views/search.dart';
import 'package:ecommerce/app/modules/home/views/settings.dart';
import 'package:ecommerce/app/modules/home/views/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../utils/colors/app_colors.dart';

class PersistenBottomNavBarDemo extends StatelessWidget {
   PersistenBottomNavBarDemo({super.key});
  HomeController _homeController = Get.put(HomeController());
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WishListView(),
    CartView(),
    SearchView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
   floatingActionButton: FloatingActionButton.small(onPressed: (){},child: Icon(Icons.shopping_cart_outlined),),floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    tabs: _homeController.tabs(),
    navBarBuilder: (navBarConfig) => Style1BottomNavBar(navBarDecoration: NavBarDecoration(color: CustomColor.primaryWhite),
      navBarConfig: navBarConfig,
    ),
  );
}