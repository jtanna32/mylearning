import 'package:flutter/material.dart';
import 'package:mylearning/utils/color_utils.dart';
import 'package:mylearning/widgets/academy.dart';
import 'package:mylearning/widgets/custom_app_bar.dart';
import 'package:mylearning/widgets/learn_today.dart';
import 'package:mylearning/widgets/learning.dart';
import 'package:mylearning/widgets/my_learning.dart';
import 'package:mylearning/widgets/search_text_field.dart';
import 'package:mylearning/widgets/top_instructors.dart';
import 'package:mylearning/widgets/upcoming_courses.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Learning/Academy',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 26, bottom: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTextField(),
              const SizedBox(
                height: 16,
              ),
              const MyLearning(),
              const SizedBox(
                height: 20,
              ),
              const Learning(),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 8,
                height: 8,
                color: ColorUtils.dividerColor,
              ),
              const SizedBox(
                height: 20,
              ),
              const Academy(),
              const SizedBox(
                height: 18,
              ),
              const TopInstructors(),
              const SizedBox(
                height: 20,
              ),
              const UpcomingCourses(),
              const SizedBox(
                height: 6,
              ),
              const LearnToday(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        selectedItemColor: ColorUtils.black,
        unselectedItemColor: ColorUtils.black,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/dashboard.png'),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/like.png'),
            label: 'Collaboration',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/cap.png'),
            label: 'Learning',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/trending.png'),
            label: 'Trending',
          ),
        ],
      ),
    );
  }
}
