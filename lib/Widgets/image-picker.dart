import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey.shade200,
              child: Center(
                  child: file == null
                      ? const Text("Image is not picked")
                      : Image.file(File(file!.path))),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              ),
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print('image is picked');
              },
              child: const Text(
                "Pick Image",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              ),
              onPressed: () async {
                final List<XFile> photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print('images is picked');
                for(int i = 0 ; i < files!.length ; i++){
                  print(files![i].path);
                }

              },
              child: const Text(
                "Pick Multiple Image",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
