import 'package:e_schooling/common/const.dart';
import 'package:flutter/material.dart';

import '../component/image_view.dart';



getAppBar({
  required String title,
  Function()? onBackButtonPressed,
  required BuildContext context,
  Color? color,
 bool isResultScreen=false
}) {
  return AppBar(
    backgroundColor: color ?? Colors.white,
    centerTitle: true,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: InkWell(
          onTap: onBackButtonPressed ??
              () {
                Navigator.pop(context);
              },
          child:  Icon(
            Icons.arrow_back_ios_outlined,
            size: 20,
            color: isResultScreen?kWhiteColor: Colors.black,
          )),
    ),
    automaticallyImplyLeading: false,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Container(
          child:
           ImageView(onTap: () {}),
        ),
      ),
    ],
    title: Text(
      title,
      style:  TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color:isResultScreen?kWhiteColor: Colors.black),
    ),
  );
}

