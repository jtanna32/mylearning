import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylearning/utils/color_utils.dart';
import 'package:mylearning/widgets/common/custom_title.dart';

class Academy extends StatelessWidget {
  const Academy({Key? key}) : super(key: key);

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
                title: 'Academy',
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
          height: 390,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index > 0 ? 20 : 24,
                ),
                child: const _AcademyCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _AcademyCard extends StatelessWidget {
  const _AcademyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: const DecorationImage(
                image: AssetImage(
                  'assets/academy.jpeg',
                ),
                fit: BoxFit.cover),
          ),
          height: 390,
          width: 315,
          padding: const EdgeInsets.only(
            top: 271,
            right: 10,
            left: 10,
            bottom: 10,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: ColorUtils.black,
              borderRadius: BorderRadius.circular(22),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 18,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'School of Live\nCommerce',
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        const _CustomRichText(
                          title: 'Courses',
                          number: '3',
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorUtils.customWhite,
                            ),
                          ),
                        ),
                        const _CustomRichText(
                          title: 'Experts',
                          number: '12',
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: ColorUtils.searchBackground,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/star.svg',
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          color: ColorUtils.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 10,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}

class _CustomRichText extends StatelessWidget {
  final String number;
  final String title;

  const _CustomRichText({
    Key? key,
    required this.title,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: number,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: ColorUtils.customWhite,
            ),
          ),
          TextSpan(
            text: ' $title',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: ColorUtils.customWhite,
            ),
          ),
        ],
      ),
    );
  }
}
