import 'package:flutter/material.dart';

class ExperienceState extends StatelessWidget {
  const ExperienceState({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Expérience professionnelle";
    const experience1 = "DÉVELOPPEUR MOBILE";
    const experience2 = "DÉVELOPPEUR WEB";
    const service = "- ENTREPRISE";
    const experienceAt1 = "17 Mars 2023";
    const experienceAt2 = "10 Janvier 2020";

    return Padding(
      padding: const EdgeInsets.all(17),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: Color.fromARGB(156, 86, 196, 255),
            ),
            child: Row(
              children: [
                const Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.update),
                  onPressed: () {
                    _showEditDialog(context);
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(color: Colors.white30),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  child: const Row(
                    children: [
                      Text(
                        experience1,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(width: 7),
                      Text(
                        service,
                        style: TextStyle(
                            fontSize: 8, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        experienceAt1,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  child: const Column(
                    children: [
                      Text(
                        "• Création d'une application de pointage pour les agents",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "• Développement d'une plateforme de gestion de tâches",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "• Mise en place d'un système de suivi des performances",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(color: Colors.white30),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  child: const Row(
                    children: [
                      Text(
                        experience2,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(width: 7),
                      Text(
                        service,
                        style: TextStyle(
                            fontSize: 8, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        experienceAt2,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "• Conception et développement d'un site e-commerce pour une PME locale",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "• Création d'un tableau de bord interactif pour le suivi des ventes en temps réel",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "• Implémentation d'un système de gestion de contenu personnalisé pour une agence de marketing",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showEditDialog(BuildContext context) async {
    String updatedContainte = "";
    String newContainte = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(156, 86, 196, 255),
            ),
            child: const Text(
              'Modifier l\'Expérience',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController()..text = updatedContainte,
                onChanged: (value) {
                  updatedContainte = value;
                },
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'Poste *',
                ),
              ),
              TextField(
                controller: TextEditingController()..text = updatedContainte,
                onChanged: (value) {
                  updatedContainte = value;
                },
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'Statut professionnel *',
                ),
              ),
              TextField(
                controller: TextEditingController()..text = updatedContainte,
                onChanged: (value) {
                  updatedContainte = value;
                },
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'Durée *',
                ),
              ),
              TextField(
                controller: TextEditingController()..text = updatedContainte,
                onChanged: (value) {
                  updatedContainte = value;
                },
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'Tâches *',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(updatedContainte);
              },
              child: const Text(
                'Modifier',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (newContainte != null) {
      // Traitez les nouvelles valeurs ici
    }
  }
}
