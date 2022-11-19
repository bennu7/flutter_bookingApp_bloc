import 'package:flutter/material.dart';

extension WidgetExtension on double {
  Widget get width => SizedBox(width: this);
  Widget get height => SizedBox(height: this);
}
