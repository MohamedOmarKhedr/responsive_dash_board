import 'package:flutter/material.dart';
import 'package:responsive_dash_board/data/models/user_info_model.dart';
import 'package:responsive_dash_board/presentation/screens/responsive_dash_board_screen/responsive_dash_board_views/user_info_list_tile.dart';

import '../../../styles/app_images.dart';

class LatestTransactionListView extends StatefulWidget {
  const LatestTransactionListView({super.key});

  @override
  State<LatestTransactionListView> createState() =>
      _LatestTransactionListViewState();
}

class _LatestTransactionListViewState extends State<LatestTransactionListView> {
  final List<UserInfoModel> usersInfoModel = [
    UserInfoModel(
        imagePath: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        imagePath: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josua Nunitoi20@gmail'),
    UserInfoModel(
        imagePath: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: usersInfoModel.length,
        itemBuilder: (context, index) {
          {
            return IntrinsicWidth(
              child: UserInfoListTile(
                userInfoModel: usersInfoModel[index],
              ),
            );
          }
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
