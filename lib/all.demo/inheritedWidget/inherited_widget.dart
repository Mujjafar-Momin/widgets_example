
import 'package:flutter/cupertino.dart';
import 'package:stream_demo_project/all.demo/inheritedWidget/data.dart';

class Inherit extends InheritedWidget{

  @override
  final Widget child;
  final DataBase database;

  const Inherit({super.key, required this.child, required this.database}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
  static Inherit? of(BuildContext context){
  Inherit? inherit=context.dependOnInheritedWidgetOfExactType();
  return inherit;
  }
}