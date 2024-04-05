import 'package:flutter/material.dart';

class SymfonyWiget extends StatefulWidget {
  const SymfonyWiget({super.key});

  @override
  State<SymfonyWiget> createState() => _SymfonyWigetState();
}

class _SymfonyWigetState extends State<SymfonyWiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('web/images/symfony.jpg'),
              radius: 100,
            ),
            SizedBox(height:17),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(color: Color.fromARGB(229, 13, 30, 40)),
              child: const Column(
                children: [
                  Text(
                  "PROJETS RÉALISÉS",
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)
                    )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Link: portal.supplyship.fr")),
          ],
        ),
      ),
    );
  }
}
