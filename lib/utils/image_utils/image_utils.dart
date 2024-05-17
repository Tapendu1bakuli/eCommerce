import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class ImageUtils{
   static const String leadingAppbarIcon ="assets/icons/appbar_leading_icon.png";
   static const String centerAppbarIcon ="assets/icons/appbar_logo_center.png";
   static const String rightAppbarIcon ="assets/icons/appbar_right.png";
   static const String searchPrefix ="assets/icons/search_icon.png";
   static const String searchSuffix ="assets/icons/mic_icon.png";
   static const String sort ="assets/icons/sort.png";
   static const String filter ="assets/icons/filter.png";
   static const String beauty1 ="assets/images/beauty1.png";
   static const String beauty2 ="assets/images/beauty2.png";
   static const String beauty3 ="assets/images/beauty3.png";
   static const String beauty4 ="assets/images/beauty4.png";
   static const String beauty5 ="assets/images/beauty5.png";
   static const String carousal1 ="assets/images/carousal1.png";
   static const String clock ="assets/icons/clock.png";
   static const String print ="assets/images/print.png";
   static const String show ="assets/images/shoe.png";
   static const String offers ="assets/images/offers.png";
   static const String emoji ="assets/images/emoji.png";
   static const String mac ="assets/images/mac.png";
   static const String newArrival ="assets/images/newArrival.png";
   static const String sponsered ="assets/images/sponsered.png";
}
Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
}