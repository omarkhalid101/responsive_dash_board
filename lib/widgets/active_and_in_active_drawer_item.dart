import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: ListTile(
        title: Text(
          drawerItemModel.title,
          style: AppStyles.styleMedium16(context),
        ),
        leading: SvgPicture.asset(
          drawerItemModel.image,
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        title: Text(
          drawerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
        leading: SvgPicture.asset(
          drawerItemModel.image,
        ),
        trailing: Container(
          color: Colors.blue,
          width: 3.27,
        ),
      ),
    );
  }
}
