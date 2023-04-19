import 'package:e_schooling/screens/course_detail/course_detail.dart';
import 'package:e_schooling/screens/course_start/course_start.dart';
import 'package:e_schooling/screens/course_start/start_course_screen.dart';
import 'package:e_schooling/screens/dashboard/dashboard.dart';
import 'package:e_schooling/screens/quiz/quiz.dart';
import 'package:e_schooling/screens/result/result_screen.dart';
import 'package:e_schooling/screens/result/result_with_badge.dart';
import 'package:flutter/material.dart';

import 'navbar/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E School',

      home:  Dashboard(),
    );
  }
}

