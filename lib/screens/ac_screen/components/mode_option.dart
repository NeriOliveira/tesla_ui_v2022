import 'package:flutter/material.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/constant.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/widgets/buttons/toggle_button.dart';

class ModeOption extends StatelessWidget {
  final String name;
  final Widget icon;

  const ModeOption({Key? key, required this.name, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onTab, width, height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            name,
          style: TextStyle(
            color: lightTextColor,
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),
        Container(
          width: 70.0,
          height: 70.0,
          margin: EdgeInsets.only(top: 5.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  top: -30.0,
                  bottom: -30.0,
                  left: -30.0,
                  right: -30.0,
                  child: ToggleButton(
                      child: this.icon,
                      onTab: onTab,
                      width: width,
                      height: height,
                      isOn: false,
                  ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
