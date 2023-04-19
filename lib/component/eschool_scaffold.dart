import 'package:e_schooling/common/const.dart';
import 'package:flutter/material.dart';

import '../common/custom_appbar.dart';


class ESchoolScaffold extends StatelessWidget {
  final String? title;
  final Widget child;
  final Widget? bottomNavBar;
  final Widget? button;
  final Function()? onBackButtonPressed;
  final CrossAxisAlignment? contentCrossAxisAlignment;
  final MainAxisAlignment? contentMainAxisAlignment;
  final Color? backGroundColor;
  final bool isResultScreen;

  const ESchoolScaffold({
    super.key,
    this.title,
    this.bottomNavBar,
    this.backGroundColor,
    required this.child,
    this.contentCrossAxisAlignment,
    this.contentMainAxisAlignment,
    this.button,
    this.onBackButtonPressed,
    this.isResultScreen=false
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        appBar: title != null
            ? getAppBar(
              isResultScreen: isResultScreen,
                title: title ?? '',
                color:  backGroundColor ?? Theme.of(context).scaffoldBackgroundColor,
                context: context,
                onBackButtonPressed: onBackButtonPressed ?? () {})
            : null,
        body: Column(
          crossAxisAlignment: contentCrossAxisAlignment ?? CrossAxisAlignment.start,
          mainAxisAlignment: contentMainAxisAlignment ?? MainAxisAlignment.start,
          children: [
            Expanded(child: child),
            button != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 20, top: 20),
                    child: button,
                  )
                : Container(),
          ],
        ),
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}