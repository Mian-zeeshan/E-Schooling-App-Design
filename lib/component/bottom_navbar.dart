import 'package:flutter/material.dart';

import '../common/const.dart';

typedef IndexFunction = void Function(int);

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final IndexFunction onTabChanged;
  final List<Widget> navItems;
  const CustomBottomNavBar(
      {super.key, required this.selectedIndex, required this.onTabChanged, required this.navItems});

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.transparent,
        backgroundColor: Color(0xffFFFFFF),
        labelTextStyle: MaterialStateProperty.all(
           TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xff9F9F9F),
          ),
        ),
      ),
      child: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: onTabChanged,
        destinations: navItems,
      ),
    );
  }
}