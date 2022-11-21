import 'package:flutter/material.dart';
import '../common/extensions/extensions.dart';
import '../common/themes/app_colors.dart';
import '../common/themes/app_styles.dart';

Widget wMainTextField(
    BuildContext context,
    TextEditingController controller, {
      TextInputType keyboardType = TextInputType.multiline,
      bool autofocus = false,
      Function(String)? onChanged,
      String? topLabel,
      TextStyle? topLabelStyle,
      int? maxLength,
      int? maxLines = 1,
      String? hintText,
    }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      if (topLabel != null)
        Text(topLabel, style: topLabelStyle ?? AppStyles.text16PxBold.white)
            .pOnly(bottom: 10).rtl,
      TextField(
        autofocus: autofocus,
        maxLength: maxLength,
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        style: AppStyles.text20PxBold.white,
        minLines: 2,
        maxLines: maxLines,
        textAlign: TextAlign.center,
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          counter: const Offstage(),
          contentPadding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 5),
          filled: true,
          fillColor: AppColors.darkGrey,
          hintText: hintText ?? '',
          hintStyle: AppStyles.text20PxBold.greyLight,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ],
  ).px(55);
}