import 'package:flutter/material.dart';

class TrainingState extends StatelessWidget {
  const TrainingState({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Formation";
    const experience1 = "Master 2 en Génie Logiciel et Base de Donnée";
    const experience2 = "Licence en Génie Logiciel et Base de Donnée";
    const experience3 = "Devéloppement d'application mobile DTC";
    const experienceAt1 = "17 Mars 2019";
    const experienceAt2 = "10 Février 2015";
    const experienceAt3 = "02 Février 2024";

    return Padding(
      padding: const EdgeInsets.all(17),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            decoration: const BoxDecoration(color: Colors.white60),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(color: Colors.white30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: const Row(
                children: [
                  Text(experience3,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
                  SizedBox(width: 7),
                  Spacer(),
                  Text(experienceAt3,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(color: Colors.white30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: const Row(
                children: [
                  Text(experience1,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
                  SizedBox(width: 7),
                  Spacer(),
                  Text(experienceAt1,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(color: Colors.white30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: const Row(
                children: [
                  Text(experience2,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
                  SizedBox(width: 7),
                  Spacer(),
                  Text(experienceAt2,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
