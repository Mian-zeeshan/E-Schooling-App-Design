import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../common/const.dart';
import '../config/config.dart';

class CourseCard extends StatelessWidget {
  String? courseTitle;
  String? durationTime;
  String? startDate;
  String? endDate;
  String courseImage;
  CourseCard(
      {super.key,
      required this.courseTitle,
      required this.durationTime,
      required this.startDate,
      required this.endDate,
      required this.courseImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: kWhiteColor,
          child: SizedBox(
            height: 170.0,
            width: 196.0,
            child: Column(
              children: [
                SizedBox(
                  height: 103,
                  width: 196.0,
                  child: Image.asset(courseImage,fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 67,
                  width: 196.0,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 6, top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(courseTitle,
                              size: 14.0,
                              fontWeight: FontWeight.w400,
                              fontfamily: 'SofiaPro',
                              color: Color(0xff2B2D42)),
                              SizedBox(height: 5,),
                          Row(
                            children: [
                              Image.asset('asset/images/clock.png'),
                              text(durationTime,
                                  color: Color(0xffA7A7A9),
                                  size: 12.0,
                                  fontWeight: FontWeight.w400,
                                  fontfamily: 'SofiaPro')
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 4,top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(startDate,
                                    color: Color(0xff2B2D42),
                                    size: 10.0,
                                    fontWeight: FontWeight.w400,
                                    fontfamily: 'SofiaPro'),
                                    text(endDate,
                                    color: Color(0xffEA5455),
                                    size: 10.0,
                                    fontWeight: FontWeight.w400,
                                    fontfamily: 'SofiaPro')
                              ],
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        )

        // ListView.separated(itemBuilder: (context, index) {

        // }, separatorBuilder: (context, index) {

        // }, itemCount: 1)
      ],
    );
  }
}
