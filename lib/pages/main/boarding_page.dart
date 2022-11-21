import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/extensions/extensions.dart';
import '../../../common/mixins/assets.gen.dart';
import '../../../common/mixins/fonts.gen.dart';
import '../../../widgets/aCustom_widgets.dart';
import '../../common/services/auth_services.dart';
import '../../common/themes/app_colors.dart';
import '../../common/themes/app_styles.dart';
import '../../common/themes/themes.dart';
import '../../widgets/wMainButton.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('START: LoginScreen()');
    // if (!kDebugMode) {
    //   Timer(250.milliseconds, () => AuthService.signInWithGoogle(context));
    // }

    return Container(
      decoration: AppStyles.gradientBg,
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Column(
          children: [
            150.verticalSpace,
            Text(
              'פלס"ם סיירת נח"ל', // STR
              textAlign: TextAlign.center,
              style: AppStyles.text20PxBold.copyWith(shadows: [
                const Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 10.0,
                  color: AppColors.darkBlack,
                ),
              ], color: AppColors.white, fontFamily: FontFamily.rilTopia),
            ),
            250.verticalSpace,
            // googleLoginButton(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   'Start Share & Chat', // STR
                //   textAlign: TextAlign.center,
                //   style: AppStyles.text20PxRegular.copyWith(color: AppColors.white, fontFamily: FontFamily.rilTopia),
                // ).px(55),
                10.verticalSpace,
                wMainButton(context,
                    radius: 8,
                    isWide: true,
                    title: 'התחבר עם Google',
                    icon: Assets.svg.gLogoIcon.svg(height: 25),
                    color: isLoading? Colors.grey[400]! : Colors.white,
                    textColor: isLoading? Colors.grey[500]! : Colors.black,
                    onPressed: () async => isLoading ? null : _handleGoogleLogin()).appearAll,
              ],
            ),
            const Spacer(flex: 5),
            Center(child: Image.asset('assets/sayeret-logo.png', height: 40).appearAll),
            const Spacer(flex: 2),
          ],
        ).center,
      ),
    );

  }
    void _handleGoogleLogin() async {
      isLoading = true;
      setState(() {});
      await AuthService.signInWithGoogle(context);
      isLoading = false;
      setState(() {});
    }

/*  Widget googleLoginButton() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () async => AuthService().signInWithGoogle(context),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            // decoration: borderDeco(),
            color: AppColors.white,
            child: ListTile(
              visualDensity: VisualDensity.compact,
              leading: Assets.svg.gLogoIcon.svg(height: 25),
              title: Text(
                // loadingText ? 'מיד נכנסים...' :
                'Google login', // STR
                style: AppStyles.text16PxBold.darkBlack,
              ),
              trailing: const Icon(Icons.east).rtl,
            ),
          ),
        ),
      );*/
}
