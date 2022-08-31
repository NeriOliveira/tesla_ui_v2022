import 'package:flutter/material.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/ac_screen/components/temperature_sleek_slider.dart';
import '../../../constant.dart';

class TemperatureSlider extends StatefulWidget {
  const TemperatureSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<TemperatureSlider> createState() => _TemperatureSliderState();
}

class _TemperatureSliderState extends State<TemperatureSlider> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(20.0, 20.0),
              color: progressShadowColor,
              blurRadius: 70.0,
            ),
            BoxShadow(
              offset: Offset(-20.0, -20.0),
              color: progressShadowColor2,
              blurRadius: 70.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: progressBarBackground,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(360.0),
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: SleekSlider(),
      ),
    );
  }
}

