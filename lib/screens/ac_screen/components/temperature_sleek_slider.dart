import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../../../constant.dart';

class SleekSlider extends StatelessWidget {

  Widget slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
      startAngle: 90.0,
      size: 180.0,
      customColors: CustomSliderColors(
        progressBarColors: progressBarColor,
        gradientStartAngle: 180.0,
        gradientEndAngle: 360.0,
        trackColor: progressBarTrackColor,
        dotColor: progressBarTrackColor,
      ),
      customWidths: CustomSliderWidths(
        trackWidth: 30.0,
        progressBarWidth: 30.0,
        shadowWidth: 30.0,
      ),
      spinnerMode: false,
      angleRange: 360.0,
    ),
    min: 16.0,
    max: 30.0,
    initialValue: 24.0,
    onChange: (double value) { },
    onChangeStart: (double startValue) { },
    onChangeEnd: (double endValue) { },
    innerWidget: (double value){
      return Center(
        child: Container(
          width: 80.0,
          height: 60.0,
          child: Column(
            children: [
              Text(
                value.toInt().toString() + "ºC",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w900,
                  color: mainTextColor,
                ),
              ),
              Text(
                "Cooling...",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: mainTextColor,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: slider,
    );
  }
}