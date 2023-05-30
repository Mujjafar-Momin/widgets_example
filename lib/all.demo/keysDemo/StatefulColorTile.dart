import 'package:flutter/material.dart';

class StatefulColorTile extends StatefulWidget {
  const StatefulColorTile({Key? key, required this.tileColor}) : super(key: key);
  final Color tileColor;

  @override
  State<StatefulColorTile> createState() => _StatefulColorTileState();
}

class _StatefulColorTileState extends State<StatefulColorTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.5,
      height: 300,
      color: widget.tileColor,
    );
  }
}
