import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/presentation/styles/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  const CustomDrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.imagePath),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemModel.title,
          style: isActive ? AppStyles.styleBold16(context) : AppStyles.styleRegular16(context),
        ),
      ),
      trailing: Visibility(
          visible: isActive,
          child: Container(width: 3.27, color: const Color(0xff4eb7f2))),
    );
  }
}
