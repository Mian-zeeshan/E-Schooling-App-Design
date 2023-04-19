import 'package:flutter/material.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';


import '../common/const.dart';

class ImageView extends StatelessWidget {
  final Function() onTap;

  const ImageView({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:
      CircularPercentIndicator(
              radius: 18.0,
              lineWidth: 3.0,
              percent: 0,
              center: const CircleAvatar(
                backgroundImage: NetworkImage(
              
                    'https://static.vecteezy.com/system/resources/previews/004/991/321/original/picture-profile-icon-male-icon-human-or-people-sign-and-symbol-vector.jpg'
                     
                ),
              ),
              backgroundColor: Colors.transparent,
              progressColor: kGreenColor.withOpacity(0.8),
            )
         
    );
  }
}