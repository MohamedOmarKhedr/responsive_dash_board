import 'package:flutter/material.dart';

import '../../../../data/models/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  final List<DrawerItemModel> items;
  const CustomDrawerListView({super.key, required this.items});

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomDrawerItem(
                drawerItemModel: widget.items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
