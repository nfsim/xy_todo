// Flutter imports:
import 'package:flutter/material.dart';

extension TextStyleHelper on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle color(Color color) => copyWith(color: color);
  TextStyle size(double size) => copyWith(fontSize: size);
}
