import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_dribble_design/helper/constants/color_helper.dart';
import 'package:ui_dribble_design/presentation_layer/views/home_screen/home_screen.dart';

import 'blocs/navbar_bloc/nav_bloc.dart';
import 'helper/config/SizeConfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<NavigationCubit>(
              create: (context) => NavigationCubit(),
            ),
          ],
          child: OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return MaterialApp(
                darkTheme:
                    ThemeData(backgroundColor: HexColor(ColorHelper.bgColor)),
                // locale: DevicePreview.locale(context),
                // builder: DevicePreview.appBuilder,
                debugShowCheckedModeBanner: false,
                title: 'ui design',
                theme: ThemeData(primarySwatch: Colors.blue),
                home: const HomePageScreen(),
                // home: DashBoardScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
