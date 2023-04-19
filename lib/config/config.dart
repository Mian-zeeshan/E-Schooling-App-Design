

import 'package:flutter/material.dart';

class Config{

}
Text text(
  text, {
  color = Colors.black,
  size = 14.0,
  fontWeight = FontWeight.normal,
  fontfamily = '',
  maxLines = 4,
}) {
  return Text(
    text,
    maxLines: 2,
    softWrap: false,
    style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight, fontFamily: fontfamily),
  );
}
