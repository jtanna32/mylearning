import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylearning/utils/color_utils.dart';
import 'package:mylearning/widgets/common/custom_title.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Row(
            children: [
              const CustomTitle(
                title: 'My Learnings',
              ),
              const Spacer(),
              Text(
                'View all',
                style: TextStyle(
                  color: ColorUtils.textDarkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SvgPicture.asset('assets/right.svg')
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 95,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index > 0 ? 20 : 24,
                ),
                child: const _MyLearningCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _MyLearningCard extends StatelessWidget {
  const _MyLearningCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorUtils.learningCardColor,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          SizedBox(
            height: 75,
            width: 75,
            child: Image.asset('assets/learningImage.png'),
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: 159,
            child: Column(
              children: [
                Text(
                  'The future of beauty is LIVE with Mrunal Panchal @mrunu',
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                    color: ColorUtils.black,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      '12 h. 40 min',
                      style: TextStyle(
                        color: ColorUtils.lightGrey,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorUtils.customWhite,
                        ),
                      ),
                    ),
                    Text(
                      '26 Chapters',
                      style: TextStyle(
                        color: ColorUtils.lightGrey,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const _CircularProgress(),
        ],
      ),
    );
  }
}

class _CircularProgress extends StatelessWidget {
  const _CircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularProgressIndicator(
          value: 0.2,
          valueColor: AlwaysStoppedAnimation<Color>(ColorUtils.green),
          backgroundColor: ColorUtils.customWhite,
        ),
        Text(
          '20%',
          style: TextStyle(
            color: ColorUtils.green,
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
