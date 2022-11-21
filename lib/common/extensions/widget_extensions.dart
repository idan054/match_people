import 'package:entry/entry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../extensions/extensions.dart';
import '../themes/app_colors.dart';
var appearDuration = kDebugMode ? 750 : 250;

extension IconDataX on IconData {
  Icon icon({Color color = Colors.white, double size = 20}) => Icon(
        this,
        color: color,
        size: size,
      );

  FaIcon iconAwesome({Color color = Colors.white, double size = 20}) =>
      FaIcon(
        this,
        color: color,
        size: size,
      );
}

// Future<dynamic> kPushNavigator(context, screen,{bool replace = false}) =>
//     replace ?
//     Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => screen))
//     : Navigator.of(context).push(
//         MaterialPageRoute(builder: (context) => screen));

extension WidgetX on Widget {

  Future push(BuildContext context) =>  Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => this));

  Future pushReplacement(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
    return Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => this));
  }



  // My extension:
  InkWell onTap(GestureTapCallback? onTap, {double radius = 99}) => InkWell(
    // overlayColor: MaterialStateProperty.all(Colors.yellow),
    //   splashColor: Colors.yellow,
    //   focusColor: Colors.yellow,
    //   highlightColor: Colors.yellow,
    //   hoverColor: Colors.yellow,
      borderRadius: BorderRadius.circular(radius), onTap: onTap, child: this);

  Directionality isHebrewDirectionality(String text) => Directionality(
      textDirection: text.isHebrew ? TextDirection.rtl : TextDirection.ltr,
      child: this);

  Container get testContainer =>
      Container(color: AppColors.testGreen, child: this);

  Directionality get rtl =>
      Directionality(textDirection: TextDirection.rtl, child: this);

  Directionality get ltr =>
      Directionality(textDirection: TextDirection.ltr, child: this);

  ClipRRect get circleRounded =>
      ClipRRect(borderRadius: BorderRadius.circular(99), child: this);

  ClipRRect rounded(double round)=>
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: this,
      );

  Entry get appearAll => Entry.all(
        duration: Duration(milliseconds: appearDuration),
        child: this,
      );

  Entry get appearScale => Entry.scale(
        duration: Duration(milliseconds: appearDuration),
        child: this,
      );

  Entry get appearOffset => Entry.offset(
        duration: Duration(milliseconds: appearDuration),
        child: this,
      );

  Entry get appearOpacity => Entry.opacity(
        duration: Duration(milliseconds: appearDuration),
        child: this,
      );

  // rest extension:
  Padding px(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Padding py(double padding, {Key? key}) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        key: key,
        child: this,
      );

  Padding pOnly(
          {double top = 0,
          double right = 0,
          double bottom = 0,
          double left = 0,
          Key? key}) =>
      Padding(
        padding: EdgeInsets.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
        ),
        key: key,
        child: this,
      );

  Center get center => Center(child: this);

  Padding pad(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Align get top => Align(
        alignment: Alignment.topCenter,
        child: this,
      );

  Align get bottom => Align(
        alignment: Alignment.bottomCenter,
        child: this,
      );

  Align get centerLeft => Align(
        alignment: Alignment.centerLeft,
        child: this,
      );

  Align get centerRight => Align(
        alignment: Alignment.centerRight,
        child: this,
      );

  SizedBox sizedBox(double w, double h) => SizedBox(
        width: w,
        height: h,
        child: this,
      );

  Widget offset(double x, double y) => Transform.translate(
        offset: Offset(x, y),
        child: this,
      );

  SliverToBoxAdapter get toSliverBox => SliverToBoxAdapter(child: this);

  Expanded expanded({int flex = 1}) => Expanded(
        flex: flex,
        child: this,
      );

  Flexible flexible({required int flex}) => Flexible(
        flex: flex,
        child: this,
      );

  Transform scale({required double scale}) => Transform.scale(
        scale: scale,
        child: this,
      );
}
