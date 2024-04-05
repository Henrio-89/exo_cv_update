import 'package:flutter/material.dart';

class SummaryState extends StatefulWidget {
  const SummaryState({super.key});

  @override
  _SummaryStateState createState() => _SummaryStateState();
}

class _SummaryStateState extends State<SummaryState> {
  String containte =
      "Développeur web et mobile expérimenté avec 3 années d'expérience dans la création d'applications iOS et Android. Passionné par la création d'applications intuitives et performantes qui répondent aux besoins des utilisateurs. Solides compétences en conception UI/UX, développement natif et cross-plateforme, et test.";

  @override
  Widget build(BuildContext context) {
    const title = "À propos";

    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            alignment: Alignment.centerLeft,
            decoration:
                const BoxDecoration(color: Color.fromARGB(156, 86, 196, 255)),
            child: Row(
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.update),
                  onPressed: () {
                    _showEditDialog(context);
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: Colors.white30),
            child: Text(
              containte,
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }

  Future<void> _showEditDialog(BuildContext context) async {
    String newContainte = await showDialog(
      context: context,
      builder: (BuildContext context) {
        String updatedContainte = containte;
        return AlertDialog(
          title: const Text('Modifier la description'),
          content: TextField(
            controller: TextEditingController()..text = containte,
            onChanged: (value) {
              updatedContainte = value;
            },
            maxLines: null,
            decoration: const InputDecoration(hintText: 'Entrez une nouvelle description'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(updatedContainte);
              },
              child: const Text('Valider'),
            ),
          ],
        );
      },
    );

    if (newContainte != null) {
      setState(() {
        containte = newContainte;
      });
    }
  }
}
