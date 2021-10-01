import 'package:flutter/material.dart';
import 'package:flutter_nft_app_ui/model/profile.dart';
import 'package:flutter_nft_app_ui/widgets/custom_grid.dart';
import 'package:flutter_nft_app_ui/widgets/person_info.dart';
import 'package:flutter_nft_app_ui/widgets/tab_sliver_dart.dart';

class ProfileScreen extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ['Creation', 'Collection'];

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                  child: PersonInfo(
                profile: profile,
              )),
              SliverPersistentHeader(
                  delegate: TabSliverDelegate(
                    TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey[400],
                        indicatorColor: Colors.black,
                        tabs: tabs
                            .map((e) => Tab(
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ))
                            .toList()),
                  ),
                  pinned: true),
            ];
          },
          body:  TabBarView(
            children: [
              CustomGrid(scrollKey:'creations', list: profile.creations!,),
              CustomGrid(scrollKey:'collections', list: profile.collections!,)
            ],
          ),
        ),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(Icons.arrow_back_ios_outlined),
      actions: [_buildIcon(Icons.more_vert_outlined)],
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
      onPressed: () {},
      splashRadius: 25,
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
