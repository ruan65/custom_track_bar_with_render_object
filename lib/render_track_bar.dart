import 'package:flutter/material.dart';

class RenderTrackBar extends RenderBox {
  Color _barColor;
  Color _thumbColor;
  double _thumbSize;

  RenderTrackBar({
    Color barColor,
    Color thumbColor,
    double thumbSize,
  })  : _barColor = barColor,
        _thumbColor = thumbColor,
        _thumbSize = thumbSize;

  Color get barColor => _thumbColor;

  set barColor(Color value) {
    if (_barColor == value) {
      return;
    }
    _barColor = value;
    markNeedsPaint();
  }

  Color get thumbColor => _thumbColor;

  set thumbColor(Color value) {
    if (_thumbColor == value) {
      return;
    }
    _thumbColor = value;
    markNeedsPaint();
  }

  double get thumbSize => _thumbSize;

  set thumbSize(double value) {
    if (_thumbSize == value) {
      return;
    }
    _thumbSize = value;
    markNeedsLayout();
  }
}
