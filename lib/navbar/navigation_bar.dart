import 'package:e_schooling/component/eschool_scaffold.dart';
import 'package:flutter/material.dart';

import '../component/bottom_navbar.dart';
import '../screens/dashboard/dashboard.dart';

// ignore: must_be_immutable
class NavigationBarScreen extends StatelessWidget {
  List pages = [ Dashboard()];

  NavigationBarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ESchoolScaffold(
      child: Center(
        child: pages[0],
      ),
      bottomNavBar: CustomBottomNavBar(
        navItems: const [
          NavigationDestination(
            icon: ImageIcon(AssetImage('asset/images/home.png'), color: Color(0xff9F9F9F)),
            label: 'Home',
          ),
          NavigationDestination(
              icon: ImageIcon(AssetImage('asset/images/badges.png'), color: Color(0xff9F9F9F)), label: 'Badges'),
          NavigationDestination(
              icon: ImageIcon(AssetImage('asset/images/notification.png'), color: Color(0xff9F9F9F)),
              label: 'Notifications'),
        ],
        onTabChanged: (int) {},
        selectedIndex: 0,
      ),
    );
  }
}
