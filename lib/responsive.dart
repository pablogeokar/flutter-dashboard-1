import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 850;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width >= 1100) {
      return desktop;
    } else if (size.width >= 850) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
