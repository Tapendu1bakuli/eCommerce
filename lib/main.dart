import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'app/routes/app_pages.dart';
import 'languages/LocalizationService.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDovBXdGz_1n2WaiDbYHjmw3duxvTAezdA',
      appId: '1:25914179488:android:c40a2b1776cd7c04bdaec5',
      messagingSenderId: '25914179488',
      projectId: 'ecommerce-3831a',
      storageBucket: 'ecommerce-3831a.appspot.com',
    )
  );
  runApp(GetMaterialApp(
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    translations: LocalizationService(),
    supportedLocales: LocalizationService.locales,
    // translationsKeys: Get.find<TranslationService>().translations,
    locale: LocalizationService.locale,
    fallbackLocale: LocalizationService.fallbackLocale,
    defaultTransition: Transition.cupertino,
    debugShowCheckedModeBanner: false,
    initialRoute:Theme1AppPages.INITIAL,
    getPages: Theme1AppPages.routes,
    // themeMode: Get.find<SettingsService>().getThemeMode(),
    // theme: Get.find<SettingsService>().getLightTheme(),
    // darkTheme: Get.find<SettingsService>().getDarkTheme(),
  ));
}

