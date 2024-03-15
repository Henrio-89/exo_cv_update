import 'package:cv/utils/experience_state.dart';
import 'package:cv/utils/header_state.dart';
import 'package:cv/utils/skill_state.dart';
import 'package:cv/utils/training_state.dart';
import 'package:cv/utils/summary_state.dart';
import 'package:flutter/material.dart';

class HomePageState extends StatelessWidget {
  const HomePageState({super.key});

  @override
  Widget build(BuildContext context) {
    const titleAppbar = "CURRICULUM VITAE";
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          titleAppbar,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        
        children: const [
          HeaderState(),
          SummaryState(),
          ExperienceState(),
          TrainingState(),
          SkillState()
        ],
      ),
    );
  }
}
