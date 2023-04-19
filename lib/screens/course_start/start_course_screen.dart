import 'package:e_schooling/common/navigator.dart';
import 'package:e_schooling/component/eschool_scaffold.dart';
import 'package:e_schooling/screens/course_detail/course_detail.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

import '../../component/bottom_navbar.dart';
import '../quiz/quiz.dart';

class StartCourseScreen extends StatefulWidget {
  const StartCourseScreen({super.key});

  @override
  State<StartCourseScreen> createState() => _StartCourseScreenState();
}

class _StartCourseScreenState extends State<StartCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return ESchoolScaffold(
      onBackButtonPressed: () {
        routeTo(CourseDetail(), context: context);
      },
      title: 'Aerial Applic...',
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
      child: SingleChildScrollView(
        child: Column(
          children: [
           VideoPlay(),
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(22), topRight: Radius.circular(22)),
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(22), topRight: Radius.circular(22))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Aerial Application of Pesticides',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '(37 reviews)',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Spacer(),
                          Icon(
                            Icons.lock_clock,
                            color: Colors.green,
                          ),
                          Text(
                            '3h & 20 minutes',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      InkWell(onTap: () {
                        routeTo(Quiz(), context: context);
                      },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration:
                              BoxDecoration(color: const Color(0xffF5F5F5), borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Icon(
                                    Icons.pause_circle_filled_rounded,
                                    size: 40,
                                    color: Colors.orange,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Introduction',
                                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.lock_clock,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        '1:20min',
                                        style: TextStyle(fontSize: 15, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: const [
                                  Icon(
                                    Icons.rectangle_outlined,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration:
                            BoxDecoration(color: const Color(0xffF5F5F5), borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Column(
                              children: const [
                                Icon(
                                  Icons.pause_circle_filled_rounded,
                                  size: 40,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Strategies for Application',
                                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.lock_clock,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '3:20min',
                                      style: TextStyle(fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: const [
                                Icon(
                                  Icons.rectangle_outlined,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration:
                            BoxDecoration(color: const Color(0xffF5F5F5), borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Column(
                              children: const [
                                Icon(
                                  Icons.pause_circle_filled_rounded,
                                  size: 40,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Prequisities for Application',
                                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.lock_clock,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '1:20min',
                                      style: TextStyle(fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: const [
                                Icon(
                                  Icons.rectangle_outlined,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoPlayState createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  ValueNotifier<VideoPlayerValue?> currentPosition = ValueNotifier(null);
  VideoPlayerController? controller;
  late Future<void> futureController;
  ChewieController? chewieController;
  String path = "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
  initVideo() {
    controller = VideoPlayerController.network(path);

    futureController = controller!.initialize();
  }

  @override
  void initState() {
    initVideo();
    chewieController = ChewieController(
      allowFullScreen: true,
      videoPlayerController: controller!,

      //  aspectRatio: controller!.value.size.aspectRatio,
      aspectRatio: 16 / 9,
      autoPlay: false,
      looping: true,
      materialProgressColors: ChewieProgressColors(
          playedColor: Colors.red,
          bufferedColor: Colors.blue,
          //  backgroundColor: Colors.green,
          handleColor: Colors.red),
    );
    controller!.addListener(() {
      if (controller!.value.isInitialized) {
        currentPosition.value = controller!.value;
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  void soundToggle() {
    setState(() {
      isMusicOn == true ? controller!.setVolume(0.0) : controller!.setVolume(1.0);
      isMusicOn = !isMusicOn;
    });
  }

  bool isMusicOn = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureController,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
              ),
              height: 250,
              //350,
              //controller!.value.size.height > 400 ? 300 : controller!.value.size.height,
              width: MediaQuery.of(context).size.width,
              //double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Row(
                  children: [
                    Expanded(
                      child: Chewie(
                        controller: chewieController!,
                      ),
                    ),
                  ],
                ),
              ));
        }
      },
    );
  }
}
