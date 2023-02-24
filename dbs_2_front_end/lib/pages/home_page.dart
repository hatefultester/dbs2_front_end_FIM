import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/base_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tohle bude webovka na DBS 2 a PRO 3 projekt', style: Get.textTheme.headlineLarge,),
          Text('Zatim tady nic neni', style: Get.textTheme.headlineMedium),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.travel_explore_sharp, size: 40,),
          ),
        ],
      ),),
    );
  }
}

class HomePageViewController extends GetxController {

}
