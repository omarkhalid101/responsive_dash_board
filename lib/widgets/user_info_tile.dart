import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});
  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      elevation: 0,
      child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(subtitle, style: AppStyles.styleRegular12(context))),
    );
  }
}
