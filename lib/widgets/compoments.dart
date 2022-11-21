import 'package:flutter/material.dart';
import 'package:match_people/common/extensions/extensions.dart';
import 'package:match_people/widgets/wMainButton.dart';
import 'package:match_people/widgets/wMainTextField.dart';


Widget addDataCompu(BuildContext context, TextEditingController controller,
    {
  required String topLabel,
      required VoidCallback onPressed,
}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      wMainTextField(context, controller,
          topLabel: topLabel, maxLines: 6),
      10.sizedBoxHeight,
      wMainButton(context, title: 'המשך', onPressed: onPressed)
    ],
  );
}