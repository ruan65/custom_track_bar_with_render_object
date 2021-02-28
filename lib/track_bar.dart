import 'package:flutter/widgets.dart';

class TrackBar extends LeafRenderObjectWidget {
  final Color barColor;
  final Color thumbColor;
  final double thumbSize;

  const TrackBar({
    Key key,
    this.barColor,
    this.thumbColor,
    this.thumbSize = 20,
  }) : super(key: key);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderTrackBar(
      barColor: barColor,
      thumbColor: thumbColor,
      thumbSize: thumbSize,
    );
  }
}

class RenderTrackBar extends RenderBox {
  final Color _barColor;
  final Color _thumbColor;
  final double _thumbSize;

  RenderTrackBar({Color barColor, Color thumbColor, double thumbSize})
      : _barColor = barColor,
        _thumbColor = thumbColor,
        _thumbSize = thumbSize;
}
