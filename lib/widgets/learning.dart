import 'package:flutter/material.dart';

import 'package:mylearning/widgets/common/custom_title.dart';

class Learning extends StatelessWidget {
  const Learning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: CustomTitle(
            title: 'Learningsz',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 148,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: index > 0 ? 16 : 24, right: index == 2 ? 24 : 0),
                child: const _LearningCard(),
              );
            },
          ),
        )
      ],
    );
  }
}

class _LearningCard extends StatelessWidget {
  const _LearningCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: 148,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/learningBackground.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}
