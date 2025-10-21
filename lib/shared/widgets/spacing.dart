import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {

  const Spacing({super.key, this.height = 0, this.width = 0});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) => SizedBox(height: height, width: width);

  static Widget get v4 => const Spacing(height: 4);
  static Widget get v8 => const Spacing(height: 8);
  static Widget get v12 => const Spacing(height: 12);
  static Widget get v16 => const Spacing(height: 16);
  static Widget get v24 => const Spacing(height: 24);

  static Widget get h4 => const Spacing(width: 4);
  static Widget get h8 => const Spacing(width: 8);
  static Widget get h12 => const Spacing(width: 12);
  static Widget get h16 => const Spacing(width: 16);
  static Widget get h24 => const Spacing(width: 24);
}