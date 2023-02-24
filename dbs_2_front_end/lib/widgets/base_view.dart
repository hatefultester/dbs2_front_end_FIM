import 'package:flutter/material.dart';

const double _width = double.infinity;

const double _height = double.infinity;

const EdgeInsets _margin = EdgeInsets.only(
  top: 50, bottom: 50, left: 70, right: 70,);

const EdgeInsets _padding = EdgeInsets.only(
  top: 15, bottom: 15, left: 20, right: 20,
);

const BoxDecoration _boxDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(12),),
);

class BaseView extends StatelessWidget {
  final Widget child;

  final double width;
  final double height;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final BoxDecoration decoration;

  const BaseView({Key? key, required this.child
  , this.padding = _padding, this.margin = _margin, this.width = _width, this.height = _height, this.decoration = _boxDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        decoration: decoration,
        child: child,
      ),
    );
  }
}
