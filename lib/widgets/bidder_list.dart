import 'package:flutter/material.dart';
import 'package:flutter_nft_app_ui/model/bider.dart';
import 'package:flutter_nft_app_ui/widgets/bidder_card.dart';

class BidderList extends StatelessWidget {
  final String scrollkey;
  final List<Bidder> bidderList;

  const BidderList({Key? key, required this.scrollkey, required this.bidderList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        key: PageStorageKey(scrollkey),
        padding: const EdgeInsets.all(20),
        // scrollDirection: Axis.vertical,
        itemBuilder: (_, index) => BidderCard(bidder: bidderList[index]),
        separatorBuilder: (_, index) => const SizedBox(
              height: 15,
            ),
        itemCount: bidderList.length);
  }
}
