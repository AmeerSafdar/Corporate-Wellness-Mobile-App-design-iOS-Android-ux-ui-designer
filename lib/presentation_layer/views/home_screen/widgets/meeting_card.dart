// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../../helper/config/SizeConfig.dart';
import '../../../../helper/constants/dimensions.dart';
import '../../../../helper/constants/screen_percentage.dart';
import '../../../../helper/utils/custom_dialogue.dart';
import '../../../../helper/utils/styles.dart';
import '../../../widget/texts_widget.dart';

class MeetingCardWidget extends StatelessWidget {
  Color CLR;
  MeetingCardWidget({
    Key? key,
    required this.CLR,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CustomDialogue.show(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgets(txt: "10:00 AM"),
          Container(
            margin: const EdgeInsets.only(left: 5),
            // height: SizeConfig.screenSizeHeight! *
            //     ScreenPercentage.SCREEN_SIZE_10,
            width:
                SizeConfig.screenSizeWidth! * ScreenPercentage.SCREEN_SIZE_70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                color: CLR),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidgets(
                    txt: "Meeting with frontend developers",
                    styles: CustomTextStyle.workingTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextWidgets(
                      txt: "Flose Real State Project",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: LimitedBox(
                            maxHeight: 28,
                            maxWidth: SizeConfig.screenSizeWidth! *
                                ScreenPercentage.SCREEN_SIZE_8,
                            // MediaQuery.of(context).size.width *
                            //     0.8,
                            child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              primary: false,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Align(
                                    widthFactor: 0.8,
                                    child: Stack(
                                      children: [
                                        ClipOval(
                                          child: SizedBox.fromSize(
                                              size: const Size.fromRadius(15),
                                              child: Image.asset(
                                                "assets/images/img.jpg",
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ],
                                    ));
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextWidgets(txt: "16:00 - 19:00"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
