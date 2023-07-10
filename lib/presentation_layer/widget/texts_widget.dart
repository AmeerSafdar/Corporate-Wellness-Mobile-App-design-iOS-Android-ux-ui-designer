// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  String txt;
  TextStyle? styles;
  TextWidgets({Key? key, required this.txt, this.styles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      // overflow: TextOverflow.ellipsis,
      style: styles,
    );
  }
}
