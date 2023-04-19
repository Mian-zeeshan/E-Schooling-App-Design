import 'package:e_schooling/common/const.dart';
import 'package:e_schooling/component/eschool_scaffold.dart';
import 'package:e_schooling/model/course_model.dart';
import 'package:flutter/material.dart';

import '../../component/course_card.dart';
import '../../component/courses_list.dart';
import '../../config/config.dart';

class Dashboard extends StatelessWidget {
  int assigned = 6, inProgress = 6, completed = 6;
  double ProgressValue = 0.80;
  List<CourseModel> courseList = [
    CourseModel(
        courseImage: 'asset/images/img3.png',
        courseDuration: '3h & 20minutes',
        courseEndDate: '08/05/2022',
        courseStartDate: '20/04/2022',
        courseTitle: 'Course 1'),
    CourseModel(
        courseImage: 'asset/images/img2.png',
        courseDuration: '3h & 20minutes',
        courseEndDate: '08/05/2022',
        courseStartDate: '20/04/2022',
        courseTitle: 'Course 1'),
    CourseModel(
        courseImage: 'asset/images/img1.png',
        courseDuration: '3h & 20minutes',
        courseEndDate: '08/05/2022',
        courseStartDate: '20/04/2022',
        courseTitle: 'Course 1'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ESchoolScaffold(
        title: 'E-School',
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Todo:dash board card widget used here
              dashboardCard(size),
              //Todo:assigned courses lists
              CourseListComponent(
                coursesList: courseList,
                listTitle: 'Assigned',
              ),
              CourseListComponent(
                coursesList: courseList,
                listTitle: 'In Progress',
              ),
              CourseListComponent(
                coursesList: courseList,
                listTitle: 'Completed',
              ),
            ],
          ),
        ));
  }

  Widget dashboardCard(Size size) {
    return Container(
      width: size.width,
      height: 126,
      color: const Color(0xff2B2D42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text('Earned Badges',
                          color: Colors.white, size: 16.0, fontWeight: FontWeight.w500, fontfamily: 'SofiaPro'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('asset/images/badgesimg.png'),
                          Image.asset('asset/images/badgesimg.png'),
                          Image.asset('asset/images/badgesimg.png')
                        ],
                      ),
                      const SizedBox(
                        height: 26.0,
                      ),
                      text('80% Completed',
                          color: Colors.white, size: 16.0, fontWeight: FontWeight.w500, fontfamily: 'SofiaPro'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text('Courses=', color: kWhiteColor, size: 16.0, fontWeight: FontWeight.w500),
                      const SizedBox(
                        height: 7.0,
                      ),
                      text('Assigned=$assigned', color: kWhiteColor, size: 12.0, fontWeight: FontWeight.w600),
                      text('In progress=$inProgress', color: kWhiteColor, size: 12.0, fontWeight: FontWeight.w600),
                      text('Completed=$completed', color: kWhiteColor, size: 12.0, fontWeight: FontWeight.w600),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 14, top: 10),
            child: SizedBox(
              height: 11,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: ProgressValue == 0.100 ? 1 : ProgressValue,
                  valueColor: const AlwaysStoppedAnimation<Color>(kGreenColor),
                  backgroundColor: const Color(0xffD6D6D6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
