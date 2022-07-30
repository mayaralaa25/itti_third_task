import 'package:flutter/material.dart';

class SquareUnit extends StatelessWidget {
  const SquareUnit({
    Key? key,
    this.decoration,
  }) : super(key: key);

  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 75,
      height: 75,
      // color: bkColor ?? Colors.blue,
      decoration: decoration,
    );
  }
}