import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylearning/utils/color_utils.dart';

class LearnToday extends StatelessWidget {
  const LearnToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 60,
        left: 27,
        right: 27,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.5,
          image: AssetImage(
            'assets/tile.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Learn today,\nlead tomorrow.',
            style: TextStyle(
              color: ColorUtils.grey2,
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Made with',
                style: TextStyle(
                  color: ColorUtils.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: SvgPicture.asset(
                  'assets/heart.svg',
                ),
              ),
              Text(
                'in India',
                style: TextStyle(
                  color: ColorUtils.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
