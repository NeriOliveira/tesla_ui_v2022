import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {

  final Widget child;
  Function(bool) onTab;
  final double width;
  final double height;
  bool isOn;

  NavButton({
    Key? key, required this.child, required this.onTab, required this.width, required this.height, required this.isOn,
  }) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool isOn = false;

  @override
  void initState(){
    this.isOn = this.widget.isOn ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widget.width ?? 110.0,
      height: this.widget.height ?? 110.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              isOn?
              "assets/images/button_on.png" : "assets/images/nav_button.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: (){
          setState((){
            isOn = !isOn;
          });
          if(this.widget.onTab != null) this.widget.onTab(isOn);
        },
        child: Align(
          alignment: Alignment.center,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              isOn ? Colors.white : Colors.grey.withOpacity(0.8),
              BlendMode.modulate,
            ),
            child: this.widget.child,
          ),
        ),
      ),
    );
  }
}