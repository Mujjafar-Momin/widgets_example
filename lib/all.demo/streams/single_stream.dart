import 'dart:async';

import 'package:flutter/material.dart';

class SingleStreamDemo extends StatefulWidget {
  const SingleStreamDemo({Key? key}) : super(key: key);

  @override
  State<SingleStreamDemo> createState() => _SingleStreamDemoState();
}

class _SingleStreamDemoState extends State<SingleStreamDemo> {
  @override
  Widget build(BuildContext context) {
    StreamController<String> streamController = StreamController();
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<String>(
                stream: streamController.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('Hello..! ${snapshot.data ?? ''}');
                  } else {
                    return const Text('Hello..!');
                  }
                }),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(hintText: 'Enter Your Name Here',border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  streamController.add(textEditingController.text);
                },
                child: const Text('Done'))
          ],
        ),
      ),
    );
  }
}
