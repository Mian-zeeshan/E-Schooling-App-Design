import 'package:e_schooling/common/navigator.dart';
import 'package:e_schooling/model/course_model.dart';
import 'package:e_schooling/screens/course_detail/course_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../config/config.dart';
import 'course_card.dart';

class CourseListComponent extends StatelessWidget {
  List<CourseModel> coursesList=[];
  String listTitle;
   CourseListComponent({super.key,
   required this.coursesList,
   required this.listTitle
   
   });

  @override
  Widget build(BuildContext context) {
    return  Padding(
               padding: const EdgeInsets.only(left: 15.0, top: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
               text('$listTitle(${coursesList.length})', size: 18.0, fontWeight: FontWeight.w500),
            
            SizedBox(
              height: 180,
              child: ListView.separated(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
            
                return InkWell(onTap: () {
                  routeTo(CourseDetail( ), context: context);
                },
                  child: CourseCard(
                  courseTitle: coursesList[index].courseTitle,
                  durationTime: coursesList[index].courseDuration,
                  startDate: coursesList[index].courseStartDate,
                  endDate: coursesList[index].courseEndDate,
                  courseImage: coursesList[index].courseImage,
                               ),
                );
                
              }, separatorBuilder: (context, index) {
            
                return SizedBox();
            
                
              }, itemCount:coursesList.length ),
            )
            
                  ],
                ),
              );
            
          
  }
}