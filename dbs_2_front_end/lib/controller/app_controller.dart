
import 'package:dbs_2_front_end/utils/menu_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../pages/dashboard_page.dart';
import '../pages/login_page.dart';
import '../pages/profile_page.dart';

class AppController extends GetxController {
  static AppController get to => Get.find();

  SizingInformation? sizingInformation;

  RxString pageTitle = 'Hello FIM'.obs;

  RxBool displayCircularProgressIndicator = false.obs;

  Rx<MenuItem> selectedMenuItem = Rx(MenuItem.Dashboard);
  Rx<Widget> selectedContent = Rx(const DashboardPage());

  List<MenuItem> menuItems = [
    MenuItem.Dashboard,
    MenuItem.Profile,
    MenuItem.Login
  ];

  handleMenuItemTapped(MenuItem item) {
    switch (item) {
      case MenuItem.Dashboard:
        selectedContent.value = const DashboardPage();
        break;
      case MenuItem.Profile:
        selectedContent.value = const ProfilePage();
        break;
      case MenuItem.Login:
        selectedContent.value = const LoginPage();
        break;
    }
    update(['menu']);
  }

  DeviceScreenType getDeviceScreenType() {
    return sizingInformation != null ? sizingInformation!.deviceScreenType : DeviceScreenType.desktop;
  }
}