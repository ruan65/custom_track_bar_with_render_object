import 'package:custom_widget_with_render_object_seek_bar/render_track_bar.dart';
import 'package:flutter/foundation.dart';
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
  RenderTrackBar createRenderObject(BuildContext context) {
    return RenderTrackBar(
      barColor: barColor,
      thumbColor: thumbColor,
      thumbSize: thumbSize,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderTrackBar renderObject) {
    renderObject
      ..barColor = barColor
      ..thumbSize = thumbSize
      ..thumbSize = thumbSize;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('barColor', barColor));
    properties.add(ColorProperty('thumbColor', thumbColor));
    properties.add(DoubleProperty('thumbSize', thumbSize));
  }
}
