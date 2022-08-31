import 'package:flutter/material.dart';

class LockButton extends StatelessWidget {

  final Widget child;
  final VoidCallback onTap;


  const LockButton({
    Key? key, required this.child, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.0,
      width: 125.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/lock_button.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: this.onTap,
        child: Align(
          alignment: Alignment.center,
          child: this.child,
        ),
      ),
    );
  }
}