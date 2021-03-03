import 'package:custom_widget_with_render_object_seek_bar/track_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.white,
          child: TrackBar(
            barColor: Colors.blue,
            thumbColor: Colors.red,
            thumbSize: 20,
          ),
        ),
      ),
    );
  }
}
