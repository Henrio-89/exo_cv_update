import 'package:cv/utils/experience_state.dart';
import 'package:cv/utils/header_profile.dart';
import 'package:cv/utils/skill_state.dart';
import 'package:cv/utils/training_state.dart';
import 'package:cv/utils/summary_state.dart';
import 'package:flutter/material.dart';

class HomePageState extends StatelessWidget {
  const HomePageState({super.key});

  @override
  Widget build(BuildContext context) {
    // const titleAppbar = "CURRICULUM VITAE";
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          SizedBox(height:77 ),
          ProfileState(),
          // HeaderState(),
          SizedBox(height:17 ),
          SummaryState(),
          ExperienceState(),
          TrainingState(),
          SkillState()
        ],
      ),
    );
  }
}
