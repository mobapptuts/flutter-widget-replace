import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(title: 'Wiget Switcher', home: new LoadImage(),));

class LoadImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoadImageState();
  }
}

class LoadImageState extends State<LoadImage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Downloaded'),
      ),
    );
  }

}
