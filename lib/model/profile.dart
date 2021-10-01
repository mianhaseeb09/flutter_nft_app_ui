import 'package:flutter_nft_app_ui/model/add.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;

  Profile(
      {this.imgUrl,
      this.name,
      this.twitter,
      this.desc,
      this.email,
      this.creations,
      this.collections});

  static Profile generateProfile() {
    return Profile(
        imgUrl: 'assets/images/avatar.png',
        name: 'Alexy prefontain',
        twitter: '@aweforia',
        desc:
            '3D Artist from Montriel Canada,His work is all\nabout Colors,Balance and Motion',
        email: 'aeforia@outlook.com',
        creations: [
          Art(
              imgUrl: 'assets/images/create1.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/create2.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/create3.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/create4.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/create5.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear')
        ],
        collections: [
          Art(
              imgUrl: 'assets/images/collection1.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/collection2.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/collection3.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/collection4.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear'),
          Art(
              imgUrl: 'assets/images/collection5.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'So Happy to Share My second Collab with my dear')
        ]);
  }
}
