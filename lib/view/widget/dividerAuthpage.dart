import 'package:flutter/material.dart';

class DividerAuthPage extends StatelessWidget {
  final double width;
  final EdgeInsetsGeometry? margin;
  const DividerAuthPage({super.key, required this.width, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: margin,
        child: Divider(
          color: Color.fromRGBO(221, 221, 221, 1),
          thickness: 2,
        ));
  }
}
