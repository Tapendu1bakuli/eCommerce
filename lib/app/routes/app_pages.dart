
import 'package:ecommerce/app/modules/home/binding/home_binding.dart';
import 'package:ecommerce/app/modules/home/views/home_views.dart';
import 'package:ecommerce/app/routes/routes.dart';
import 'package:get/get.dart';

import '../modules/bottom_navigation_bar/views/bottom_navigation_bar_view.dart';

class Theme1AppPages {
  static const INITIAL = Routes.ROOT;
  //static const INITIAL_FOR_LOGIN = Routes.LOGIN;
  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () =>  PersistenBottomNavBarDemo(),
      binding: HomeBinding(),
    ),
  ];
}