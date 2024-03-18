import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final Color boxcolor;
  final TextStyle labelstyle;
  final void Function()? onTap;
  Button(
      {required this.label,
      required this.height,
      required this.width,
      required this.onTap,
      required this.labelstyle,
      required this.boxcolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Text(
          '${label}',
          style: labelstyle,
        ),
        decoration: BoxDecoration(
          color: boxcolor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
