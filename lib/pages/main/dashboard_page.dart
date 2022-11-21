import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:match_people/common/extensions/extensions.dart';
import '../../common/themes/app_styles.dart';
import 'dart:convert';
import 'dart:convert';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../../common/themes/app_colors.dart';
import '../../widgets/compoments.dart';
import '../matchDataPage.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}
class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  var misdarController = TextEditingController();
  var doh1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          addDataCompu(context, misdarController,
              topLabel: 'הכנס רשימת מסדר בוקר:',
              onPressed: (){
                misdar = misdarController.text;
                _pageController.jumpToPage(1);
              }),
          addDataCompu(context, doh1Controller,
          topLabel: 'הכנס דו"חות 1 של המחלקות:',
          onPressed: (){
            doh1 = doh1Controller.text;
            MatchDataPage().pushReplacement(context);
          }),
        ],
        // physics: const NeverScrollableScrollPhysics(), // disable swipe
        onPageChanged: (pageIndex) { // On Swipe left or right
          setState(() => _selectedIndex = pageIndex);
          _pageController.animateToPage(
              pageIndex, duration: 200.milliseconds, curve: Curves.easeIn);
        },
      ).ltr,
     /* bottomNavigationBar: BottomNavigationBar(
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
      ),*/
    );
  }
}