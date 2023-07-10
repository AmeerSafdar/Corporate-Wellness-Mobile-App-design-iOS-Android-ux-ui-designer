// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_dribble_design/helper/config/SizeConfig.dart';
import 'package:ui_dribble_design/helper/constants/dimensions.dart';
import 'package:ui_dribble_design/helper/constants/screen_percentage.dart';

import '../constants/color_helper.dart';

class CustomDialogue {
  static show(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.D_15)),
            title: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      // padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                          color: HexColor(ColorHelper.creamColor)),
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                ),
                Container(
                  width: SizeConfig.screenSizeWidth! *
                      ScreenPercentage.SCREEN_SIZE_50,
                  height: SizeConfig.screenSizeHeight! *
                      ScreenPercentage.SCREEN_SIZE_18,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/coffee.png"))),
                ),
              ],
            ),
            content: Container(
              height: SizeConfig.screenSizeHeight! *
                  ScreenPercentage.SCREEN_SIZE_32,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Oh, you need \nsome rest!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Coffee machine can make \na cappuccino especially for you in \n5 minutes. Do you want some coffee?",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14.0, vertical: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: HexColor(ColorHelper.blackColor)),
                              borderRadius: BorderRadius.circular(
                                  Dimensions.RADIUS_DEFAULT),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "No, Later",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: HexColor(ColorHelper.blackColor)),
                                )),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimensions.RADIUS_DEFAULT),
                                color: HexColor(ColorHelper.peachColor)),
                            child: TextButton(
                                onPressed: () {},
                                child: Text("Yes, Thanks",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            HexColor(ColorHelper.blackColor)))),
                          )
                        ],
                      )),
                ],
              ),
            ),
          );
        });
  }

  static showBottomDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height:
                SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_40,
            child: SizedBox.expand(
              child: Container(
                height: SizeConfig.screenSizeHeight! *
                    ScreenPercentage.SCREEN_SIZE_40,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Oh, you need \nsome rest!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: HexColor(ColorHelper.blackColor),
                            decoration: TextDecoration.none),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Coffee machine can make \na cappuccino especially for you in \n5 minutes. Do you want some coffee?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: HexColor(ColorHelper.blackColor),
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14.0, vertical: 4),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: HexColor(ColorHelper.blackColor)),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.RADIUS_DEFAULT),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "No, Later",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            HexColor(ColorHelper.blackColor)),
                                  )),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.RADIUS_DEFAULT),
                                  color: HexColor(ColorHelper.peachColor)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("Yes, Thanks",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: HexColor(
                                              ColorHelper.blackColor)))),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }
}
