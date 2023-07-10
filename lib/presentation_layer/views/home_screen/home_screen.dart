// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_dribble_design/helper/config/SizeConfig.dart';
import 'package:ui_dribble_design/helper/constants/color_helper.dart';
import 'package:ui_dribble_design/helper/constants/dimensions.dart';
import 'package:ui_dribble_design/helper/constants/icon_helper.dart';
import 'package:ui_dribble_design/helper/constants/screen_percentage.dart';
import 'package:ui_dribble_design/helper/utils/styles.dart';
import 'package:ui_dribble_design/presentation_layer/views/home_screen/widgets/bottom_nabar_item.dart';
import 'package:ui_dribble_design/presentation_layer/views/home_screen/widgets/meeting_card.dart';

import '../../../blocs/navbar_bloc/nav_bloc.dart';
import '../../../blocs/navbar_bloc/nav_states.dart';
import '../../widget/texts_widget.dart';
import 'widgets/progress_card.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint("screen height:${SizeConfig.screenSizeHeight}");
    debugPrint("screen wid:${SizeConfig.screenSizeWidth}");
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<NavigationCubit>(context);
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
          child: custom_botton_navbar()),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // custom Appbar
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_LARGE,
                  vertical: Dimensions.PADDING_SIZE_LARGE,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidgets(
                      txt: "Hello, Villie",
                      styles: CustomTextStyle.nameTextStyle,
                    ),
                    CircleAvatar(
                      radius: SizeConfig.screenSizeHeight! *
                          ScreenPercentage.SCREEN_SIZE_4 /
                          1.1,
                      backgroundColor: HexColor(ColorHelper.creamColor),
                      child: CircleAvatar(
                        radius: SizeConfig.screenSizeHeight! *
                            ScreenPercentage.SCREEN_SIZE_3,
                        backgroundImage:
                            const AssetImage("assets/images/img.jpg"),
                      ),
                    )
                  ],
                ),
              ),
//progress
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_LARGE,
                  // vertical: Dimensions.PADDING_SIZE_LARGE,
                ),
                child: TextWidgets(
                  txt: "Your Progress",
                  styles: CustomTextStyle.titleTextStyle,
                ),
              ),

              //card progress

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      ProgressCardWidget(
                        clr: HexColor(ColorHelper.redColor),
                        textCLR: HexColor(ColorHelper.whiteCLR),
                        progressCLR: HexColor(ColorHelper.creamColor),
                      ),
                      ProgressCardWidget(
                        clr: HexColor(ColorHelper.peachColor),
                        progressCLR: HexColor(ColorHelper.grey_CLR),
                      ),
                      ProgressCardWidget(
                        clr: HexColor(ColorHelper.peachColor),
                        progressCLR: HexColor(ColorHelper.grey_CLR),
                      ),
                    ],
                  ),
                ),
              ),

              ///Date
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidgets(
                      txt: 'Wednesday, March 7',
                      styles: CustomTextStyle.titleTextStyle,
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Dimensions.RADIUS_DEFAULT),
                            color: HexColor(ColorHelper.creamColor)),
                        child: Icon(IconHelper.date_ICOn)),
                  ],
                ),
              ),

              ////meeting card

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: MeetingCardWidget(
                  CLR: HexColor(ColorHelper.creamColor),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: MeetingCardWidget(
                  CLR: HexColor(ColorHelper.lightSky),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: MeetingCardWidget(
                  CLR: HexColor(ColorHelper.peachColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
