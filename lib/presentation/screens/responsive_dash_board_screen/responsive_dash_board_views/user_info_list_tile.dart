import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/data/models/user_info_model.dart';

import '../../../styles/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoListTile(
      {super.key, required this.userInfoModel,
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.imagePath),
          title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(userInfoModel.subTitle, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
