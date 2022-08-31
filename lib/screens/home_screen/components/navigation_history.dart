import 'package:flutter/material.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/constant.dart';

class NavigationHistory extends StatelessWidget {
  const NavigationHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Navigation",
                style: TextStyle(
                  fontSize: 20.0,
                  color: mainTextColor,
                ),
              ),
              Spacer(),
              Text(
                "History",
                style: TextStyle(
                  fontSize: 16.0,
                  color: lightTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
