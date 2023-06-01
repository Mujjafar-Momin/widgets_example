import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/containerGradient/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gradient Widget'),),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.purple],
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeadLineTextWidget(text: "Head Line Text"),
              SizedBox(height: 10,),
              MediumTextWidget(text: "Medium Text "),
              SizedBox(height: 10,),
              SmallTextWidget(text: "Small Text")
            ],
          )
        ),
      ),
    );
  }
}
