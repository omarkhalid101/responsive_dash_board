import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_in_active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoTile(
                title: "Omar Khalid",
                subtitle: "subtitle",
                image: Assets.imagesAvatar3),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
              child: Column(children: [
            Expanded(child: SizedBox(height: 16,)),
            InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Settings', image: Assets.imagesSettings)),
            InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Logout', image: Assets.imagesLogout)),
            SizedBox(
              height: 48,
            ),
          ]))
        ],
      ),
    );
  }
}
