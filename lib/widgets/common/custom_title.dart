import 'package:flutter/material.dart';
import 'package:mylearning/utils/color_utils.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: ColorUtils.black,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
