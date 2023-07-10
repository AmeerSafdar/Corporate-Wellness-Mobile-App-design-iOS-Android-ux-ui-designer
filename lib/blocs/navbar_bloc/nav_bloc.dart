// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_states.dart';

enum NavbarItem { home, settings, profile, chat, date }

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    print("navbar item is $navbarItem");
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.settings:
        emit(NavigationState(NavbarItem.settings, 1));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 2));
        break;
      case NavbarItem.chat:
        emit(NavigationState(NavbarItem.settings, 3));
        break;
      case NavbarItem.date:
        emit(NavigationState(NavbarItem.date, 4));
        break;
    }
  }
}
