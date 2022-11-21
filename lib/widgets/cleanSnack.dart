import 'package:flutter/material.dart';
import '../common/extensions/extensions.dart';
import '../common/themes/app_colors.dart';
import '../common/themes/app_styles.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> cleanSnack(
    BuildContext context, {
      required String text,
      Color? color,
      Color? textColor,
      int sec = 3,
      SnackBarAction? customAction,
      bool showSnackAction = true,
    }) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    duration: Duration(seconds: sec),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color ?? Colors.grey[200]!,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    content: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: textColor ?? Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    action: showSnackAction
        ? (customAction ??
        SnackBarAction(
          label: 'close',
          onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        ))
        : SnackBarAction(
      label: '',
      onPressed: () {},
    ),
  ));
}