import 'package:flutter/material.dart';
import 'package:responsive_dash_board/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/data/models/user_info_model.dart';
import '../../../styles/app_images.dart';
import 'custom_drawer_item.dart';
import 'custom_drawer_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {

  const CustomDrawer({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      imagePath: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesMyTransctions,
      title: 'My Transctions',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfoModel: UserInfoModel(imagePath: Assets.imagesAvatar3, title: 'Lekan Okeowo', subTitle: 'demo@gmail.com'),

          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        const CustomDrawerListView(
          items: drawerItems,
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: CustomDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      imagePath: Assets.imagesSettings,
                      title: 'Settings System'),
                  isActive: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: CustomDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      imagePath: Assets.imagesLogout, title: 'Logout account'),
                  isActive: false,
                ),
              ),
              SizedBox(
                height: 48,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
