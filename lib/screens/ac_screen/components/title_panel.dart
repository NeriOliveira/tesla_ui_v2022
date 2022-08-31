import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/constant.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/widgets/buttons/toggle_button.dart';

class TitlePanel extends StatelessWidget {
  const TitlePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onTab, width, height, isOn;
    return Container(
      width: double.infinity,
      //height: 200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A/C is ON",
                style: TextStyle(
                color: mainTextColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Tap to turn off or swipe up for a fast setup",
                style: TextStyle(
                  color: lightTextColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Positioned(
            top: -45.0,
            right: -45.0,
            child: ToggleButton(
                child: SvgPicture.asset("assets/svgs/power.svg"),
                onTab: onTab,
                width: width,
                height: height,
                isOn: isOn,
            ),
          ),
        ],
      ),
    );
  }
}
