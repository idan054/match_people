import 'package:flutter/material.dart';
import 'package:match_people/common/extensions/extensions.dart';
import 'package:share_plus/share_plus.dart';

import '../widgets/wMainButton.dart';
import 'main/dashboard_page.dart';

String doh1 = '''
עומר טל
נועה יעקבי 
גל ששון
עמית דרך
דקל מרבנט
אוראל בן חמו
אבטהם יחטאם
גל זרמתי
אביחי חדד
נועם טויאר
מאיה פלד
יוני
קורן פרין
גל ויינברג
אפק טל 
נועם יואלי
דביר
אורטל
שלי
אורי יעקבי
עדי 
עודד אברגיל
אושרי
אופיר כהן סרספית
שלומית עטיה
יונתן אושפיץ
אלדד
סתיו אורן
נויה חופלת
יונתן דבוש
צוף 
אביב
איתמר
נעמי
שוהם
שחר חלק
מומו
ייגור וולושין
ירין צדק 


מפקדים:
גיא
דור
רון סאנברג
דניאל טנא
אופק
מוצנר רספ
טל רספ
יובל מפ
''';
String misdar = '''
עומר טל
נועה יעקבי 
גל ששון
עמית דרך
דקל מרבנט
אוראל בן חמו''';

class MatchDataPage extends StatefulWidget {
  const MatchDataPage({Key? key}) : super(key: key);

  @override
  State<MatchDataPage> createState() => _MatchDataPageState();
}

class _MatchDataPageState extends State<MatchDataPage> {
  var misdarList = misdar.split('\n');
  var doh1List = doh1.split('\n');
  String selectedRight = 'PlaceHolder';
  String selectedLeft = 'PlaceHolder';
  String lastSelected = 'PlaceHolder';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    135.sizedBoxHeight,
                    for (var name in misdarList) ...[
                      wMainButton(context,
                          title: name,
                          width: width * 0.45,
                          color: name == selectedLeft
                              ? Colors.green[400]!
                              : Colors.grey[700]!, onPressed: () {
                        selectedLeft = name;
                        lastSelected = name;
                        setState(() {});
                      }).py(10),
                    ],
                    135.sizedBoxHeight,
                  ],
                ),
              ),
              35.sizedBoxWidth,
              SingleChildScrollView(
                child: Column(
                  children: [
                    135.sizedBoxHeight,
                    for (var name in doh1List) ...[
                      wMainButton(context,
                          title: name,
                          width: width * 0.45,
                          color: name == selectedRight
                              ? Colors.green[400]!
                              : Colors.grey[700]!, onPressed: () {
                        selectedRight = name;
                        lastSelected = name;
                        setState(() {});
                      }).py(10),
                    ],
                    135.sizedBoxHeight,
                  ],
                ),
              )
            ],
          ),
          SafeArea(
              child: Container(
            height: height * 0.8,
            color: Colors.grey,
            width: 3,
          ).center),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                20.sizedBoxWidth,
                wMainButton(context,
                    title: 'מסדר דגל',
                    color: Colors.blue[600]!,
                    width: width * 0.3,
                    radius: 5,
                    onPressed: () {}),
                const Spacer(),
                wMainButton(context,
                    title: 'דוח 1',
                    color: Colors.blue[600]!,
                    width: width * 0.3,
                    radius: 5,
                    onPressed: () {}),
                20.sizedBoxWidth,
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue[600]!,
                    child: Icons.arrow_forward_ios.icon())
                    .onTap(() {
                  // Navigator.pop(context);
                  const DashboardPage().pushReplacement(context);
                }),
                10.sizedBoxWidth,
              ],
            ).py(15).top,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              7.sizedBoxWidth,
              wMainButton(context,
                  title: 'היה במסדר דגל!',
                  color: Colors.blue[600]!,
                  radius: 99,
                  width: 250, onPressed: () {
                misdarList.remove(selectedLeft);
                doh1List.remove(selectedRight);
                setState(() {});
              }),
              7.sizedBoxWidth,
              CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue[600]!,
                      child: Icons.share.icon())
                  .onTap(() {
                Share.share('*מי מופיע בדוח 1 ולא נכח במסדר דגל* \n'
                    '${doh1List.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(',', '\n')}');
              }),
              7.sizedBoxWidth,
              CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red[600]!,
                  child: Icons.delete.icon())
                  .onTap(() {
                misdarList.remove(lastSelected);
                doh1List.remove(lastSelected);
                setState(() {});
              }),
            ],
          ).py(15).bottom,
        ],
      ),
    );
  }
}
