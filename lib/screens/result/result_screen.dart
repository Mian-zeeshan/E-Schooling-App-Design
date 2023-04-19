import 'package:e_schooling/common/const.dart';
import 'package:e_schooling/common/navigator.dart';
import 'package:e_schooling/component/eschool_scaffold.dart';
import 'package:e_schooling/config/config.dart';
import 'package:e_schooling/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import '../../component/bottom_navbar.dart';

class ResultScreen extends StatelessWidget {
  double rating = 4.5;
  int reviews = 30, video = 12, quizes = 04, badges = 02;

  ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ESchoolScaffold(
      isResultScreen: true,
      backGroundColor: const Color(0xff2A2D42),
      onBackButtonPressed: () {
        routeTo(Dashboard(), context: context);
      },
      title: ' Result',
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
      child: Stack(
        children: [
          Container(
            color: const Color(0xff2A2D42),
            width: size.width,
            height: size.height / 2,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              width: size.width,
              height: size.height / 2 * 0.75,
              child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 100),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          text('Time Spent',
                              color: const Color(0xffAAA7A7),
                              size: 18.0,
                              fontWeight: FontWeight.w400,
                              fontfamily: 'SofiaPro'),
                          text('35minutes',
                              color: const Color(0xff333333),
                              size: 20.0,
                              fontWeight: FontWeight.w600,
                              fontfamily: 'SofiaPro'),
                        ],
                      ),
                      const SizedBox(
                        height: 19.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          text('Correct ',
                              color: const Color(0xffAAA7A7),
                              size: 18.0,
                              fontWeight: FontWeight.w400,
                              fontfamily: 'SofiaPro'),
                          text('7 Questions',
                              color: const Color(0xff333333),
                              size: 20.0,
                              fontWeight: FontWeight.w600,
                              fontfamily: 'SofiaPro'),
                        ],
                      ),
                      const SizedBox(
                        height: 19.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          text('Wrong',
                              color: const Color(0xffAAA7A7),
                              size: 18.0,
                              fontWeight: FontWeight.w400,
                              fontfamily: 'SofiaPro'),
                          text('3 Questions',
                              color: const Color(0xff333333),
                              size: 20.0,
                              fontWeight: FontWeight.w600,
                              fontfamily: 'SofiaPro'),
                        ],
                      )
                    ],
                  )),
            ),
          ),
          const Positioned(
              top: -30,
              left: -60,
              child: CircleAvatar(
                maxRadius: 60,
                backgroundColor: Color(0xff32344B),
              )),
          const Positioned(
              top: 30,
              right: -60,
              child: CircleAvatar(
                maxRadius: 60,
                backgroundColor: Color(0xff32344B),
              )),
          const Positioned(
              top: 140,
              left: -10,
              child: CircleAvatar(
                maxRadius: 40,
                backgroundColor: Color(0xff32344B),
              )),
          Positioned(
              top: 15,
              left: 95,
              child: CircleAvatar(
                maxRadius: 83,
                backgroundColor: const Color(0xff32344B),
                child: Center(
                  child: CircleAvatar(
                    maxRadius: 70,
                    backgroundColor: kWhiteColor,
                    child: Center(
                      child: text('70% ', size: 42.0, fontWeight: FontWeight.w700, fontfamily: 'SofiaPro'),
                    ),
                  ),
                ),
              )),
          Positioned(
            top: 200,
            left: 57,
            right: 0,
            child: text('Quiz Completed Successfully', color: kWhiteColor, size: 18.0, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
