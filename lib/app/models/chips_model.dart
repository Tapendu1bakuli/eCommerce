
import 'package:ecommerce/app/models/parents/model.dart';

class ChipsModel extends Model {
  String? title;
String? icon;
  Function()? ontap;

  ChipsModel({
    this.title,
    this.icon,
    this.ontap
  });

  ChipsModel.fromJson(Map<String, dynamic> json) {
    title = this.stringFromJson(json, 'title');
    icon = this.stringFromJson(json, 'icon');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title == null ? null : this.title;

    return data;
  }
}