import 'package:dbs_2_front_end/views/app_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';
import '../utils/menu_item.dart';

class WebHeadingView extends GetView<AppController> {
  const WebHeadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Center(
            child: Obx(
                  () =>
                  Text(
                    controller.pageTitle.value.toUpperCase(),
                    style: Get.textTheme.headlineLarge!.merge(TextStyle(
                        color: Get.theme.colorScheme.onPrimaryContainer,
                        letterSpacing: 2)),
                  ),
            ),
          ),
          const Spacer(),
          const WebMenu(),
        ],
      ),
    );
  }
}

class WebMenu extends StatelessWidget {
  const WebMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      id: 'menu',
      builder: (AppController controller) {
        return Row(
          children: [for (int i = 0; i < controller.menuItems.length; i++)
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child:
              WebMenuItemWidget(item: controller.menuItems[i], selected:
              controller.selectedMenuItem.value == controller.menuItems[i],
              ),
            ),],
        );
      },
    );
  }
}


class WebMenuItemWidget extends StatefulWidget {
  final MenuItem item;
  final bool selected;

  const WebMenuItemWidget({Key? key, required this.item, required this.selected}) : super(key: key);

  @override
  State<WebMenuItemWidget> createState() => _WebMenuItemWidgetState();
}

class _WebMenuItemWidgetState extends State<WebMenuItemWidget> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () {
        Get.find<AppController>().handleMenuItemTapped(widget.item);
      },
      onHover: (bool hover) => setState(() => this.hover = hover),
      child: AnimatedContainer(
        width:  150,
        height: 80,
        padding: hover ? const EdgeInsets.all(4) : const EdgeInsets.all(12),
        duration: const Duration(milliseconds: 500),
        child: Center(
          child: false ? Text(
    describeEnum(widget.item),
    style: Get.textTheme.titleLarge!.merge(const TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),): Text(
    describeEnum(widget.item),
    style: Get.textTheme.titleLarge,)

      ),
    ),
    );
  }
}
