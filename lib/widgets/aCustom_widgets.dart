import 'package:flutter/material.dart';
import '../common/extensions/extensions.dart';
import '../common/themes/app_colors.dart';
import '../common/themes/app_styles.dart';

Card buildCard(context, String title, IconData? icon,
    {Widget? pushTo,
    GestureTapCallback? onTap,
    double elevation = 1.0,
    bool boldTxt = true,
    Color? color,
    Color? bgColor}) {
  bool active = pushTo != null || onTap != null;
  return Card(
    elevation: elevation,
    color: bgColor ?? (active ? Colors.white : Colors.white.withOpacity(0.06)),
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    shape: elevation == 0.0
        ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: const BorderSide(color: Colors.grey, width: 1.5))
        : null,
    child: ListTile(
      horizontalTitleGap: 0.0,
      onTap: active
          ? onTap ??
              () {
                if (pushTo != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pushTo),
                  );
                }
              }
          : null,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: boldTxt ? FontWeight.bold : FontWeight.normal,
          fontSize: 14,
          color: color ?? (active ? Colors.black : Colors.grey[500]),
        ),
      ),
      leading: icon == null
          ? null
          : Icon(
              icon,
              color: color ?? Colors.grey[500],
            ),
    ),
  );
}

Widget riltopiaLogo({double fontSize = 52, bool shadowActive = true}) {
  TextStyle rilTopiaStyle(Color color) => TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'RilTopia',
        fontWeight: FontWeight.bold,
        shadows: shadowActive
            ? <Shadow>[
                const Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 10.0,
                  color: AppColors.darkBlack,
                ),
              ]
            : null,
      );

  return Text.rich(TextSpan(children: <InlineSpan>[
    TextSpan(
      text: 'Ril',
      style: rilTopiaStyle(AppColors.primary),
    ),
    TextSpan(
      text: 'Topia',
      style: rilTopiaStyle(AppColors.white),
    ),
  ]));
}
