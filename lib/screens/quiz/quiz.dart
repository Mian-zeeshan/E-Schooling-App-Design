import 'package:e_schooling/common/const.dart';
import 'package:e_schooling/common/navigator.dart';
import 'package:e_schooling/component/eschool_scaffold.dart';
import 'package:e_schooling/config/config.dart';
import 'package:e_schooling/screens/course_start/start_course_screen.dart';
import 'package:flutter/material.dart';

import '../../component/bottom_navbar.dart';
import '../../model/question_model.dart';
import '../result/result_with_badge.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _currentStep = 0;
  List<QuestionModel> questionList = [
    QuestionModel(
        question: '1)An IPM program involves:',
        options: [
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.'
        ],
        expectedOption: 0),
            QuestionModel(
        question: '2)An IPM program involves:',
        options: [
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.'
        ],
        expectedOption: 0),
            QuestionModel(
        question: '3)An IPM program involves:',
        options: [
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.'
        ],
        expectedOption: 0),
            QuestionModel(
        question: '4)An IPM program involves:',
        options: [
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.'
        ],
        expectedOption: 0),
            QuestionModel(
        question: '5)An IPM program involves:',
        options: [
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.',
          'Taking preventative measure,monitoring pest levels and taking action.'
        ],
        expectedOption: 0)
  ];
  List<int> answer = [];
  List<int> stepperIndex=[];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ESchoolScaffold(
      onBackButtonPressed: () {
        routeTo(StartCourseScreen(), context: context);
      },
      title: 'Quiz',
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Card(
              color: kWhiteColor,
              child: SizedBox(
                height: size.height / 2 + size.height / 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text('1 of 5',
                              size: 18.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff5E5873),
                              fontfamily: 'SofiaPro'),
                          text('Skip',
                              size: 18.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff5E5873),
                              fontfamily: 'SofiaPro'),
                        ],
                      ),
                      Container(
                        child: Expanded(
                          child: Stepper(
                            controlsBuilder: (context, details) {
                              return 
                              answer.isEmpty ? Container(
                                width: 200,
                                height: 55,
                                color: const Color(0xff8E918C),
                                child: Center(
                                  child: text('Next', color: Colors.white, size: 20.0, fontWeight: FontWeight.w500),
                                ),
                              ): _currentStep == 4?   InkWell(
                                onTap: () {

                                  routeTo(ResultWithBadges(), context: context);
                                  // setState(() {
                                  //   // answer.clear();
                                  //   //   _currentStep < 5 ? setState(() => _currentStep += 1) : null;
                                  //   //   stepperIndex.add(_currentStep);
                                  // });
                                 
                                },
                                child: Container(
                                  width: 200,
                                  height: 55,
                                  color: const Color(0xff2B2D42),
                                  child: Center(
                                    child: text('Finished', color: Colors.white, size: 20.0, fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ):
                           
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    answer.clear();
                                      _currentStep < 5 ? setState(() => _currentStep += 1) : null;
                                      stepperIndex.add(_currentStep);
                                  });
                                 
                                },
                                child: Container(
                                  width: 200,
                                  height: 55,
                                  color: const Color(0xff2B2D42),
                                  child: Center(
                                    child: text('Next', color: Colors.white, size: 20.0, fontWeight: FontWeight.w500),
                                  ),
                                ),
                              );
                           
                           
                            },
                            elevation: 0,
                            type: StepperType.horizontal,
                            physics: const ScrollPhysics(),
                            steps: [
                              Step(
                                title: const Text(''),
                                content: SizedBox(
                                  width: size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      text('Select an answer',
                                          color: const Color(0xffA7A7A9),
                                          size: 18.0,
                                          fontWeight: FontWeight.w400,
                                          fontfamily: 'SofiaPro'),
                                      questionWidget(questionList,0),
                                    ],
                                  ),
                                ),
                                isActive: stepperIndex.contains(1)?true:false,
                              ),
                            Step(
                                title: const Text(''),
                                content: SizedBox(
                                  width: size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      text('Select an answer',
                                          color: const Color(0xffA7A7A9),
                                          size: 18.0,
                                          fontWeight: FontWeight.w400,
                                          fontfamily: 'SofiaPro'),
                                      questionWidget(questionList,1),
                                    ],
                                  ),
                                ),
                                isActive:stepperIndex.contains(2)?true:false,

                              ),
                              Step(
                                title: const Text(''),
                                content:SizedBox(
                                  width: size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      text('Select an answer',
                                          color: const Color(0xffA7A7A9),
                                          size: 18.0,
                                          fontWeight: FontWeight.w400,
                                          fontfamily: 'SofiaPro'),
                                      questionWidget(questionList,2),
                                    ],
                                  ),
                                ),
                                isActive:stepperIndex.contains(3)?true:false,
                              ),
                               Step(
                                title: const Text(''),
                                content: SizedBox(
                                  width: size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      text('Select an answer',
                                          color: const Color(0xffA7A7A9),
                                          size: 18.0,
                                          fontWeight: FontWeight.w400,
                                          fontfamily: 'SofiaPro'),
                                      questionWidget(questionList,3),
                                    ],
                                  ),
                                ),
                                isActive:stepperIndex.contains(4)?true:false,
                              ),
                               Step(
                                title: const Text(''),
                                content:SizedBox(
                                  width: size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      text('Select an answer',
                                          color: const Color(0xffA7A7A9),
                                          size: 18.0,
                                          fontWeight: FontWeight.w400,
                                          fontfamily: 'SofiaPro'),
                                      questionWidget(questionList,4),
                                    ],
                                  ),
                                ),
                                isActive:stepperIndex.contains(5)?true:false,
                              ),
                            ],
                            currentStep: _currentStep,
                            onStepTapped: (value) {
                              setState(() {
                                _currentStep=value;
                              });
                            },
                            onStepContinue: () {
                              setState(() {
                                _currentStep < 5 ? setState(() => _currentStep += 1) : null;
                              });
                            },

                            onStepCancel: () {
                              setState(() {
                                if (_currentStep > 0) {
                                  _currentStep--;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget questionWidget(List<QuestionModel> questionList, int idex) {
    return Column(
      children: [
        text(questionList[idex].question, color: const Color(0xff333333), size: 18.0, fontWeight: FontWeight.w500),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 230,
          width: double.infinity,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  child: SizedBox(
                    width: 360,
                    height: 72,
                    child: Center(
                      child: Row(
                        children: [
                          Radio(
                            value: index,
                            groupValue: answer.contains(index) == true ? index : null,
                            onChanged: (value) {
                              setState(() {});
                              if (answer.contains(value)) {
                                answer.clear();
                              } else {
                                answer.clear();
                                answer.add(value!);
                              }
                            },
                          ),
                          Expanded(
                              child: Container(
                                  child: text(questionList[idex].options![index].toString(), maxLines: 3, size: 14.0)))
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: questionList[idex].options!.length),
        )
      ],
    );
  }
}
