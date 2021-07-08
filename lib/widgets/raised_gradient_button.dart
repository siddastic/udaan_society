import 'package:flutter/material.dart';
import 'package:udaan_society/constants/gradients.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;
  final double borderRadiusNumber;
  final Icon icon;
  final bool showIcon;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    this.gradient = ConstantGradients.MainTheme,
    this.borderRadiusNumber = 8,
    this.width = double.infinity,
    this.height = 50.0,
    this.showIcon = false,
    this.icon = const Icon(Icons.add),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadiusNumber),
        gradient: onPressed != null ? gradient : null,
        color: onPressed == null ? Colors.grey[400] : null,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500]!,
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onPressed();
          },
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                child,
                if (showIcon == true) icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
