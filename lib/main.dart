import 'package:flutter/material.dart';

const String _imageUrlOne = 'https://static.pexels.com/photos/596940/pexels-photo-596940.jpeg';
const String _imageUrlTwo = 'https://images.pexels.com/photos/163065/mobile-phone-android-apps-phone-163065.jpeg';
const String _imageUrlThree = 'https://static.pexels.com/photos/47261/pexels-photo-47261.jpeg';

void main() => runApp(new MaterialApp(title: 'Wiget Switcher', home: new LoadImage(),));

class Photo {
  final Text title;
  final String url;
  const Photo({this.title, this.url});
}

const List<Photo> photos = <Photo> [
  const Photo(title: const Text('ImageOne'), url: _imageUrlOne),
  const Photo(title: const Text('ImageTwo'), url: _imageUrlTwo),
  const Photo(title: const Text('ImageThree'), url: _imageUrlThree),
];

class LoadImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoadImageState();
  }
}

class LoadImageState extends State<LoadImage> {
  Photo _selectedPhotos = photos[0];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Downloaded'),
        actions: <Widget>[
          new PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return photos.map((Photo photo) {
                  return new PopupMenuItem(
                      child: new ListTile(
                        title: photo.title,
                      ),
                  );
                }).toList();
              },
          )
        ],
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
