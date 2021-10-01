import 'package:flutter/material.dart';
import 'package:flutter_nft_app_ui/model/add.dart';

class CustomGrid extends StatelessWidget {
  final String scrollKey;
  final List<Art> list;

  const CustomGrid({Key? key, required this.scrollKey, required this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: GridView.builder(
          key: PageStorageKey(scrollKey),
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4/5
          ),
          itemBuilder: (context,index)=>Container(
            height:400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                list[index].imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
