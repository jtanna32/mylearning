import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylearning/utils/color_utils.dart';
import 'package:mylearning/widgets/common/custom_title.dart';

class UpcomingCourses extends StatelessWidget {
  const UpcomingCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: CustomTitle(
            title: 'Upcoming courses',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 158,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: index > 0 ? 16 : 24, right: index == 2 ? 24 : 0),
                child: const CourseCard(),
              );
            },
          ),
        )
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFFE5A5A), // #FE5A5A
                Color(0xFFFF9714), // #FF9714
                Color(0xFFFFA800), // #FFA800
              ],
              stops: [0, 0.5, 1], // 100% at each color
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  top: 16,
                  bottom: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fitness & Wellness\nby Shivoham',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        _Language(language: 'EN'),
                        SizedBox(
                          width: 8,
                        ),
                        _Language(language: 'हे'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        _Time(title: 'Days'),
                        SizedBox(
                          width: 25,
                        ),
                        _Time(title: 'Hours'),
                        SizedBox(
                          width: 25,
                        ),
                        _Time(title: 'Min'),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        _TimeLeft(
                          number: '2',
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        _TimeLeft(
                          number: '2',
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        _TimeLeft(
                          number: '2',
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        _TimeLeft(
                          number: '3',
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        _TimeLeft(
                          number: '3',
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        _TimeLeft(
                          number: '2',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset('assets/runner.png'),
            ],
          ),
        ),
        Positioned(
          bottom: 17,
          right: 47,
          child: SvgPicture.asset('assets/scratch.svg'),
        )
      ],
    );
  }
}

class _Language extends StatelessWidget {
  final String language;

  const _Language({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white.withOpacity(0.2)),
      child: Center(
        child: Text(
          language,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class _Time extends StatelessWidget {
  final String title;

  const _Time({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _TimeLeft extends StatelessWidget {
  final String number;

  const _TimeLeft({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
      child: Text(
        number,
        style: TextStyle(
          color: ColorUtils.black,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
