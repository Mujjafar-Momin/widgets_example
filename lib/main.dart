
import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/streams/broadcast_stream.dart';
import 'package:stream_demo_project/all.demo/streams/single_stream.dart';
import 'package:stream_demo_project/imagePicker/image_picker.dart';
import 'package:stream_demo_project/imagePicker/multi_image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiImagePicker(),
    );
  }
}
