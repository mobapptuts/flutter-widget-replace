import 'package:flutter/material.dart';

const String _imageUrlOne = 'https://static.pexels.com/photos/596940/pexels-photo-596940.jpeg';

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
      body: new ImageUrl(
        imageUrl: _imageUrlOne,
      ),
    );
  }
}

class ImageUrl extends StatelessWidget {
  final String imageUrl;
  ImageUrl({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return new Image.network(
      imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }

}
