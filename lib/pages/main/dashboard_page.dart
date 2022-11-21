import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:match_people/common/extensions/extensions.dart';
import '../../common/themes/app_styles.dart';
import 'dart:convert';
import 'dart:convert';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../../common/themes/app_colors.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}
class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.gradientBgLighter,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: PageView(
          controller: _pageController,
          children: const <Widget>[
            Scaffold(backgroundColor: Colors.greenAccent),
            Scaffold(backgroundColor: Colors.yellowAccent),
            Scaffold(backgroundColor: Colors.redAccent),
            Scaffold(backgroundColor: Colors.blueAccent),
          ],
          // physics: const NeverScrollableScrollPhysics(), // disable swipe
          onPageChanged: (pageIndex) { // On Swipe left or right
            setState(() => _selectedIndex = pageIndex);
            _pageController.animateToPage(
                pageIndex, duration: 200.milliseconds, curve: Curves.easeIn);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: AppStyles.text10PxSemiBold,
          selectedItemColor: AppColors.primaryDark,
          currentIndex: _selectedIndex,
          onTap: (value) { // onTap Bottom icon
            setState(() => _selectedIndex = value);
            _pageController.jumpToPage(value);
            // _pageController.animateToPage(
            //     value, duration: 200.milliseconds, curve: Curves.easeIn);
          },
          items: const [
            BottomNavigationBarItem(label: 'אנשים', icon: Icon(Icons.contacts_outlined), ),
            BottomNavigationBarItem( label: 'לו"ז', icon: Icon(Icons.pending_actions_outlined)),
            BottomNavigationBarItem(label: 'עדכונים', icon: Icon(Icons.new_releases_outlined), ),
            BottomNavigationBarItem(label: 'נהלים', icon: Icon(Icons.description_outlined), ),

          ],
        ),
      ),
    );
  }
}