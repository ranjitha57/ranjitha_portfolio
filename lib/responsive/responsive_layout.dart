import 'package:flutter/material.dart';
import '../utils/size.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  // screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopWidth &&
      MediaQuery.of(context).size.width >= mobileWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= desktopWidth) {
          return desktop;
        } else if (constraints.maxWidth >= mobileWidth) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
