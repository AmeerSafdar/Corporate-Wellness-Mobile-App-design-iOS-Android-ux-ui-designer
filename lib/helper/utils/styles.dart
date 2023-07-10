import 'package:flutter/cupertino.dart';
import '../constants/dimensions.dart';

class CustomTextStyle {
  static TextStyle nameTextStyle = TextStyle(
    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
    fontWeight: FontWeight.bold,
  );

  static TextStyle titleTextStyle = TextStyle(
    fontSize: Dimensions.FONT_SIZE_LARGE,
    fontWeight: FontWeight.bold,
  );

  static TextStyle workingTextStyle = TextStyle(
    fontSize: Dimensions.FONT_SIZE_15,
    fontWeight: FontWeight.w600,
  );
}
