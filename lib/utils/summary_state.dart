import 'package:flutter/material.dart';

class SummaryState extends StatelessWidget {
  const SummaryState({super.key});
  @override
  Widget build(BuildContext context) {
    const title = "À propos";
    const containte =
        "Développeur web et mobile expérimenté avec 3 années d'expérience dans la création d'applications iOS et Android. Passionné par la création d'applications intuitives et performantes qui répondent aux besoins des utilisateurs. Solides compétences en conception UI/UX, développement natif et cross-plateforme, et test.";

    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17),
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
            decoration: const BoxDecoration(color: Colors.white30),
            child: const Text(
              containte,
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
