import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant.dart';

class CarComponent extends StatelessWidget {

  final String carSpeed;

  const CarComponent({
    Key? key, required this.carSpeed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 35.0,
          top: 35.0,
          child: Align(
            alignment: Alignment.topRight,
            child: Text("km", style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.normal,
              color: mainTextColor,
            ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
                carSpeed,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: mainTextColor,
                      fontSize: 130.0,
                      fontWeight: FontWeight.w200,
                    )
                )
            ),
          ),
        ),
        Positioned(
          top: 60.0,
          bottom: 0.0,
          width: MediaQuery.of(context).size.width * 2.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/page_one_car.png"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}