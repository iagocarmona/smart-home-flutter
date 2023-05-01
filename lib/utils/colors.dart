import 'package:flutter/material.dart';

@immutable
class AppColors {
  final background = const Color.fromRGBO(33, 29, 29, 1);
  final backgroundCard = const Color.fromRGBO(40, 36, 36, 1);
  final buttonOrange = const Color.fromRGBO(255, 178, 103, 1);
  final iconColor = const Color.fromRGBO(248, 248, 248, 0.7);
  get textWhite => const Color.fromRGBO(248, 248, 248, 1);

  const AppColors();
}
