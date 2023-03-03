
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is content for profile', style: Get.textTheme.titleLarge!.merge(TextStyle(color: Get.theme.colorScheme.onSecondaryContainer))),
    );
  }
}

