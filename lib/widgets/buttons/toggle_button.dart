import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {

  final Widget child;
  Function(bool) onTab;
  final double width;
  final double height;
  bool isOn;

  ToggleButton({
    Key? key, required this.child, required this.onTab, required this.width, required this.height, required this.isOn,
  }) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isOn = false;

  @override
  void initState(){
    this.isOn = this.widget.isOn ?? true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  this.widget.width ?? 140.0,
      height: this.widget.height ?? 140.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              isOn?
              "assets/images/button_on.png" : "assets/images/button_off.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: (){
          setState((){
            isOn = !isOn;
          });
          this.widget.onTab(isOn);
        },
        child: Align(
          alignment: Alignment.center,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              isOn ? Colors.white : Colors.grey.withOpacity(0.4),
              BlendMode.modulate,
            ),
            child: this.widget.child,
          ),
        ),
      ),
    );
  }
}