import 'package:flutter/material.dart';
import 'package:flutter_nft_app_ui/constant/colors.dart';
import 'package:flutter_nft_app_ui/model/add.dart';
import 'package:flutter_nft_app_ui/widgets/art_info.dart';
import 'package:flutter_nft_app_ui/widgets/bidder_list.dart';
import 'package:flutter_nft_app_ui/widgets/buy_button.dart';
import 'package:flutter_nft_app_ui/widgets/detail_banner.dart';
import 'package:flutter_nft_app_ui/widgets/tab_sliver_dart.dart';

class DetailScreen extends StatelessWidget {
  final Art art;

  DetailScreen({Key? key, required this.art}) : super(key: key);
  final tabs = ['Info', 'Bird', 'History'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  elevation: 0,
                  expandedHeight: 330,
                  backgroundColor: buttonColor,
                  leading: _buildIcon(context, Icons.arrow_back_ios_outlined,
                      back: true),
                  actions: [_buildIcon(context, Icons.more_vert_outlined)],
                  flexibleSpace: FlexibleSpaceBar(
                    background: DetailBanner(art: art),
                  ),
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: ArtInfo(art: art),
                ),
                SliverPersistentHeader(
                  delegate: TabSliverDelegate(TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 5, right: 40),
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ))
                        .toList(),
                  )),
                  pinned: true,
                )
              ];
            },
            body: TabBarView(
              children: [
                ListView(
                  children: const [],
                ),
                BidderList(scrollkey: 'birds', bidderList: art.birds!),
                BidderList(scrollkey: 'history', bidderList: art.hisory!)
              ],
            )),
      ),
      floatingActionButton: const BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
      onPressed: back ? () => Navigator.of(context).pop() : null,
      splashRadius: 25,
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
