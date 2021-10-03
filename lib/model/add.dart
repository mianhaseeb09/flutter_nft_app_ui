import 'package:flutter_nft_app_ui/model/bider.dart';

class Art {
  String? imgUrl;
  String? name;
  num? price;
  String? desc;
  List<Bidder>? birds;
  List<Bidder>? hisory;

  Art({this.imgUrl, this.name, this.price, this.desc, this.birds, this.hisory});
}
