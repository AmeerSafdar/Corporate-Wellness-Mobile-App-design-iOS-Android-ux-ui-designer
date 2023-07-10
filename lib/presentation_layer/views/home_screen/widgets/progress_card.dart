// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../helper/config/SizeConfig.dart';
import '../../../../helper/constants/color_helper.dart';
import '../../../../helper/constants/dimensions.dart';
import '../../../../helper/constants/screen_percentage.dart';
import '../../../../helper/utils/styles.dart';
import '../../../widget/texts_widget.dart';

class ProgressCardWidget extends StatelessWidget {
  Color clr;
  Color? progressCLR, textCLR;
  ProgressCardWidget(
      {Key? key, required this.clr, this.progressCLR, this.textCLR})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: SizeConfig.screenSizeWidth! * ScreenPercentage.SCREEN_SIZE_40,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE),
          ),
          shadowColor: HexColor(ColorHelper.redColor),
          color: clr,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CircularPercentIndicator(
                  // fillColor: HexColor(ColorHelper.lightSky),
                  backgroundColor: clr,
                  progressColor: progressCLR,
                  radius: 75.0,
                  lineWidth: 9.0,
                  animation: true,
                  percent: 0.55,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    "19/40",
                    style: TextStyle(
                        color: textCLR == null
                            ? HexColor(ColorHelper.blackColor)
                            : textCLR),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextWidgets(
                  txt: "Working \nHours",
                  styles: CustomTextStyle.titleTextStyle.copyWith(
                      color: textCLR == null
                          ? HexColor(ColorHelper.blackColor)
                          : textCLR),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextWidgets(
                  txt: "Working Hours exceeded by 3 hours",
                  styles: TextStyle(
                      color: textCLR == null
                          ? HexColor(ColorHelper.blackColor)
                          : textCLR),
                  // styles: CustomTextStyle.titleTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
