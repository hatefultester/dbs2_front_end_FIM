
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';
import '../utils/menu_item.dart';

class MobileNavigationDrawer extends GetView<AppController> {
  const MobileNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      id: 'menu',
      builder:(AppController controller) {return  NavigationDrawer(children: [
        for (int i = 0; i < controller.menuItems.length; i++) MobileNavigationDrawerItem(item: controller.menuItems[i])
      ],);}
    );
  }
}


class MobileNavigationDrawerItem extends GetView<AppController> {
  final MenuItem item;

  const MobileNavigationDrawerItem( {Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(describeEnum(item)),
      onTap: () {
        Navigator.of(context).pop();
        controller.handleMenuItemTapped(item);
      },
    );
  }
}
