import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/constant.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/home_screen/home_screen_page.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/lock_screen/components/car_component.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/lock_screen/components/title.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/widgets/buttons/lock_button.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/widgets/buttons/nav_button.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/widgets/scaffolds/base_scaffold.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isOn;
    var onTab;
    return BaseScaffold(
      appBarContent: [
        NavButton(
          isOn: isOn,
          onTab: onTab,
          width: 100.0,
          height: 100.0,
          child: SvgPicture.asset(
            "assets/svgs/page_one_setting icon.svg",
            width: 17.0,
            height: 17.0,
          ),
        ),
      ],
      body: Column(
        children: [
          LockScreenTitle(
            upperTitle: "Tesla",
            title: "Cybertuck",
          ),
          Expanded(
            child: CarComponent(
              carSpeed: "775",
            ),
          ),
          Text(
            "A/C is turned on",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: lightTextColor,
            ),
          ),
          LockButton(
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=> HomeScreen(),),);
            },
            child: Image.asset(
              "assets/images/page_one_lock.png",
              width: 60.0,
              height: 60.0,
            ),
          ),
          Text(
            "Tap to open the car",
            style: TextStyle(
              color: mainTextColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
