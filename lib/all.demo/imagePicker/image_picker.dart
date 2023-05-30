import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
    List<XFile>? files;
    XFile? file;
    ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker Example')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.grey.shade200,
                child: Center(
                  child: file == null
                      ? const Text("Pick An Image")
                      : Image.file(File(file!.path), width: MediaQuery.of(context).size.width * 1,)
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    final XFile? photo =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      file = photo;
                    });
                    print('image picked');
                  },
                  child: const Text('Pick Image')),
              ElevatedButton(
                onPressed: () async {
                  final List<XFile>? photos = await _picker.pickMultiImage();
                  setState(() {
                    files != photos;
                  });
                  print('images picked');
                  for(int i=0;i<files!.length;i++){
                    print(files![i].path);
                  }
                },
                child: const Text('Pick Image'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
