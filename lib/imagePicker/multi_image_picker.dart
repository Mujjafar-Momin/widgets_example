import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultiImagePicker extends StatefulWidget {
  const MultiImagePicker({Key? key}) : super(key: key);

  @override
  State<MultiImagePicker> createState() => _MultiImagePickerState();
}

class _MultiImagePickerState extends State<MultiImagePicker> {
  List<XFile>? files;
  ImagePicker _picker1 = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Image Picker'),
      ),
      body: Column(
          children: [
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.3,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: Colors.grey.shade200,
        child: const Center(
          child:
          Text('Pick an Image to Show Here'),),
      ),
    ),

    ElevatedButton(
    onPressed: () async {
    final List<XFile>? photos = await _picker1.pickMultiImage();
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
    ]
    ,
    )
    ,
    );
  }
}
