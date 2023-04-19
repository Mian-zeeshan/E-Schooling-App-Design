import 'package:e_schooling/common/const.dart';
import 'package:e_schooling/common/navigator.dart';
import 'package:e_schooling/component/eschool_scaffold.dart';
import 'package:e_schooling/config/config.dart';
import 'package:e_schooling/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseStart extends StatefulWidget {
  @override
  State<CourseStart> createState() => _CourseStartState();
}

class _CourseStartState extends State<CourseStart> {
  double rating = 4.5;

  int reviews = 30, video = 12, quizes = 04, badges = 02;
  final videoPlayerController =
      VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ESchoolScaffold(
        onBackButtonPressed: () {
          routeTo(Dashboard(), context: context);
        },
        title: ' Aerial Applic...',
        child: Stack(
          children: [
            Container(
                width: size.width,
                height: size.height / 2,
                child: GestureDetector(
                  onTap: () {
                    if (videoPlayerController.value.isPlaying) {
                      videoPlayerController.pause();
                    } else {
                      videoPlayerController.play();
                    }
                  },
                  child: AspectRatio(
                    aspectRatio: videoPlayerController.value.aspectRatio,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        VideoPlayer(videoPlayerController),
                        VideoProgressIndicator(videoPlayerController, allowScrubbing: true),
                      ],
                    ),
                  ),
                )),
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
                height: size.height / 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text('Aerial Application of\n Pesticides',
                          size: 24.0, fontWeight: FontWeight.w600, fontfamily: 'SofiaPro'),
                      Row(
                        children: [
                          Image.asset('asset/images/rating.png'),
                          text('$rating', size: 14.0, fontWeight: FontWeight.w400),
                          text('($reviews Reviews)',
                              size: 14.0,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffA7A7A9),
                              fontfamily: 'SofiaPro'),
                          const SizedBox(
                            width: 109.0,
                          ),
                          Image.asset('asset/images/clock.png'),
                          text('3h & 20minutes',
                              color: const Color(0xffA7A7A9),
                              size: 12.0,
                              fontWeight: FontWeight.w400,
                              fontfamily: 'SofiaPro')
                        ],
                      ),
                      const Text(
                        'Nulla Lorem mollit cupidatat irure. Laborum gna\n nulla duis ullamco cillum dolor. Voluptate\n exercitation incididunt aliquip deserunt rehen.\n Voluptate exercitation incididunt.. Learn More',
                        style: TextStyle(
                            color: Color(0xffA7A7A9),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SofiaPro'),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        children: [
                          customCard('Videos', video),
                          customCard('Quizzes', quizes),
                          customCard('Badges', badges),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  width: size.width,
                  height: 56,
                  color: Color(0xff2B2D42),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Center(
                        child: text('Start Now', color: kWhiteColor, size: 20.0, fontWeight: FontWeight.w500),
                      )),
                ),
              ),
            ),
          ],
        ));
  }

  Widget customCard(String title, int total) {
    return Card(
      color: Color(0xffFFFFFF),
      child: SizedBox(
        height: 77,
        width: 105,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text('$total', size: 24.0, fontWeight: FontWeight.w400, color: Color(0xff333333)),
              SizedBox(
                height: 11.0,
              ),
              text(title, size: 16.0, fontWeight: FontWeight.w400, color: Color(0xffA6A6A8))
            ],
          ),
        ),
      ),
    );
  }
}
