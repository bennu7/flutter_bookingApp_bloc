import 'package:flutter/material.dart';

class SizeHelper {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenHeightWithoutStatusBar(BuildContext context) {
    return MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top;
  }

  static double getScreenHeightWithoutStatusBarAndBottomBar(
      BuildContext context) {
    return MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
  }

  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getBottomBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }
}
