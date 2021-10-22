import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

const HANDSOME_ME = 'assets/images/handsome_me.png';
const PRAGUE = 'assets/images/prague.png';

class HeaderPictures extends StatefulWidget {
  const HeaderPictures({Key? key}) : super(key: key);

  @override
  State<HeaderPictures> createState() => _HeaderPicturesState();
}

class _HeaderPicturesState extends State<HeaderPictures> {
  File? image;

  Future getPicture(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageFromGallery = File(image.path);
      setState(() => this.image = imageFromGallery);
    } on PlatformException catch (error) {
      print('Failed to pick an image: $error');
    }
  }

  void _showImagePickerChoice() => showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Camera'),
              onTap: () {
                Navigator.of(context).pop();
                getPicture(ImageSource.camera);
              },
            ),
            ListTile(
              title: Text('Library'),
              onTap: () {
                Navigator.of(context).pop();
                getPicture(ImageSource.gallery);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: () => _showImagePickerChoice(),
          child: Container(
            height: 180,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.fill,
              child: image != null ? Image.file(image!) : Image.asset(PRAGUE),
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 130,
          child: Container(
              color: Colors.transparent,
              height: 150,
              width: 150,
              child: Image.asset(HANDSOME_ME)),
        ),
      ],
    );
  }
}
