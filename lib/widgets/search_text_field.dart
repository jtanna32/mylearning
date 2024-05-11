import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylearning/utils/color_utils.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      color: ColorUtils.searchBackground,
      margin: const EdgeInsets.only(
        right: 24,
        left: 24,
      ),
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          SvgPicture.asset('assets/search.svg'),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Courses..',
                hintStyle: TextStyle(
                  color: ColorUtils.lightGrey,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
