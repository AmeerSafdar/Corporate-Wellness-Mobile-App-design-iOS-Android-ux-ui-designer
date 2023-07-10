// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/navbar_bloc/nav_bloc.dart';
import '../../../../blocs/navbar_bloc/nav_states.dart';
import '../../../../helper/config/SizeConfig.dart';
import '../../../../helper/constants/color_helper.dart';
import '../../../../helper/constants/dimensions.dart';
import '../../../../helper/constants/icon_helper.dart';
import '../../../../helper/constants/screen_percentage.dart';

class custom_botton_navbar extends StatelessWidget {
  final bloc;
  custom_botton_navbar({
    Key? key,
    this.bloc,
  }) : super(key: key);

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
              color: HexColor(ColorHelper.light_black_clr),
              borderRadius:
                  BorderRadius.circular(Dimensions.RADIUS_EXTRA_LARGE)),
          height: SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    selectedIndex = 0;
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.home);
                  },
                  icon: Icon(
                    IconHelper.gRID_ICON,
                    color: selectedIndex == 0
                        ? HexColor(ColorHelper.whiteCLR)
                        : HexColor(ColorHelper.grey_CLR),
                  )),
              IconButton(
                  onPressed: () {
                    selectedIndex = 1;
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.date);
                  },
                  icon: Icon(
                    IconHelper.note_icon,
                    color: selectedIndex == 1
                        ? HexColor(ColorHelper.whiteCLR)
                        : HexColor(ColorHelper.grey_CLR),
                  )),
              IconButton(
                  onPressed: () {
                    selectedIndex = 2;
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.chat);
                  },
                  icon: Icon(
                    IconHelper.date_ICOn,
                    color: selectedIndex == 2
                        ? HexColor(ColorHelper.whiteCLR)
                        : HexColor(ColorHelper.grey_CLR),
                  )),
              IconButton(
                  onPressed: () {
                    selectedIndex = 3;
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.profile);
                  },
                  icon: Icon(
                    IconHelper.comment,
                    color: selectedIndex == 3
                        ? HexColor(ColorHelper.whiteCLR)
                        : HexColor(ColorHelper.grey_CLR),
                  )),
              IconButton(
                  onPressed: () {
                    selectedIndex = 4;
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.settings);
                  },
                  icon: Icon(
                    IconHelper.setting_Icon,
                    color: selectedIndex == 4
                        ? HexColor(ColorHelper.whiteCLR)
                        : HexColor(ColorHelper.grey_CLR),
                  )),
            ],
          ),
        );
      },
    );
  }
}
