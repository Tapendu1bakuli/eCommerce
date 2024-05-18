
import 'package:ecommerce/app/models/parents/model.dart';

class PriceModel extends Model {
  String? title;
  bool? isColoured;
  Function()? ontap;

  PriceModel({
    this.title,
    this.isColoured,
    this.ontap
  });

  PriceModel.fromJson(Map<String, dynamic> json) {
    title = this.stringFromJson(json, 'title');
    isColoured = this.boolFromJson(json, 'isColoured');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title == null ? null : this.title;

    return data;
  }
}