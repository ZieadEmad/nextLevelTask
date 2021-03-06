import 'package:flutter/material.dart';
import 'package:nextleveltask/ui_layer/helpers/constants/constants.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    Key? key,
    this.background,
    this.titleColor,
    this.radius,
    this.toUpper,
    this.fontSize,
    this.text,
    this.function,
    this.width,
    this.height,
  }) : super(key: key);
  Color ? background = defaultColor;
  Color ? titleColor = Colors.white;
  double ? radius = 12.0;
  double ? width = double.infinity;
  double ? height = 60.0;
  final VoidCallback? function;
  @required String ? text;
  bool ?toUpper = true;
  double ?fontSize = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: background,
      ),
      child: FlatButton(
        onPressed: function,
        child: Text(
          toUpper! ? text!.toUpperCase() : text!,
          style: TextStyle(
            color: titleColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
