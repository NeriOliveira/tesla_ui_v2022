import 'package:flutter/material.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/home_screen/components/status_card.dart';

import '../../../constant.dart';

class StatusPanel extends StatelessWidget {
  const StatusPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Status",
            style: TextStyle(
              fontSize: 20.0,
              color: mainTextColor,
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: StatusCard(
                  title: 'Batery',
                  value: '49%',
                  icon: 'assets/svgs/battery.svg',
                ),
              ),
              Expanded(
                child: StatusCard(
                  title: 'Range',
                  value: '775km',
                  icon: 'assets/svgs/range.svg',
                ),
              ),
              Expanded(
                child: StatusCard(
                  title: 'Temperature',
                  value: '28ºC',
                  icon: 'assets/svgs/temperature.svg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

