import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylearning/utils/color_utils.dart';
import 'package:mylearning/widgets/common/custom_title.dart';

class TopInstructors extends StatelessWidget {
  const TopInstructors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: ColorUtils.dividerColor,
          padding: const EdgeInsets.only(
            top: 23,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: CustomTitle(
                  title: 'Top Instructors',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index > 0 ? 20 : 24,
                      ),
                      child: const Column(
                        children: [
                          _TopInstructorInfo(),
                          SizedBox(
                            height: 23,
                          ),
                          _TopInstructorInfo(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: SvgPicture.asset(
            'assets/vector.svg',
          ),
        )
      ],
    );
  }
}

class _TopInstructorInfo extends StatelessWidget {
  const _TopInstructorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
              child: Image.asset(
            'assets/instructor.jpeg',
            fit: BoxFit.cover,
          )),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Joel Sivaji',
              style: TextStyle(
                color: ColorUtils.black,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Top instructor with over \n70000 students',
              maxLines: 2,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: ColorUtils.textDarkGrey,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '12 Courses',
              style: TextStyle(
                color: ColorUtils.grey2,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ],
    );
  }
}
