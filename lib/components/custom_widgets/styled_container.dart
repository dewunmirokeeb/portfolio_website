import 'package:flutter/material.dart';
import 'package:rokeebfolio/components/colors.dart';

class StyledContainer extends StatelessWidget {
  const StyledContainer({
    this.child,
    this.width,
    this.height,
    this.curveRadius = 5,
    this.padding,
    this.color,
    super.key,
  });

  final double? width;
  final double? height;
  final double curveRadius;
  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(curveRadius),
        color: color ?? AppColors.whiteColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(5, 5),
            color: Color.fromARGB(255, 206, 205, 204),
            blurRadius: 10,
          ),
          BoxShadow(
            offset: Offset(-2, -2),
            color: Color.fromARGB(255, 206, 205, 204),
            blurRadius: 10,
          ),
          BoxShadow(
            offset: Offset(1, -1),
            color: Color.fromARGB(255, 206, 205, 204),
            blurRadius: 10,
          )
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
