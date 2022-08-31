import 'package:flutter/material.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/constant.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/home_screen/components/information_card.dart';

import '../../../models/info.dart';

class InformationPanel extends StatelessWidget {
  const InformationPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "Information",
              style: TextStyle(
                fontSize: 20.0,
                color: mainTextColor,
              ),
            ),
          ),
          Container(
            height: 180.0,
            width: double.infinity,
            child: ListView.builder(
              itemCount: information.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(
                      right: index == information.length -1 ? 25.0 : 0.0),
                  child: InformationCard(
                    information[index],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


