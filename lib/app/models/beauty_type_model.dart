
import 'package:ecommerce/app/models/parents/model.dart';

class BeautyTypeModel extends Model {
  String? image;
  String? title;
  Function()? ontap;

  BeautyTypeModel({
    this.image,
    this.title,
    this.ontap
  });

  BeautyTypeModel.fromJson(Map<String, dynamic> json) {
    title = this.stringFromJson(json, 'title');
    image = this.stringFromJson(json, 'image');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title == null ? null : this.title;
    data['image'] = this.image == null ? null : this.image;
    return data;
  }
}