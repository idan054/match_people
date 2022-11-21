import 'package:flutter/material.dart';
import '../common/extensions/extensions.dart';
import '../common/themes/app_colors.dart';
import '../common/themes/app_styles.dart';

Widget wMainButton(BuildContext context,
    {required String title,
      bool isWide = true,
      double radius = 12,
      Widget? icon,
      double? width,
      Color color = AppColors.primary,
      Color borderColor = AppColors.transparent,
      Color textColor = AppColors.white,
      required VoidCallback? onPressed}) {
  return TextButton.icon(
      style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(radius), // <-- Radius
          )),
      onPressed: onPressed,
      icon: icon ?? const Offstage(),
      label: Text(
        title,
        textDirection: TextDirection.rtl,
        style: AppStyles.text20PxBold.copyWith(color: textColor),
      ).offset(icon == null ? -5 : 0, 0))
      .sizedBox(width ?? context.width, 55)
      .px(width == null ? (isWide ? 55 : 85) : 0);
}