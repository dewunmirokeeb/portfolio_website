import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsiveness({Key? key, this.mobile, this.tablet, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => constraints.maxWidth >= 850
          ? desktop ?? Container()
          : constraints.maxWidth >= 550
              ? tablet ?? Container()
              : mobile ?? Container(),
    );
  }
}
