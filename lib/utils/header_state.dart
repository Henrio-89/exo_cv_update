import 'package:flutter/material.dart';

class HeaderState extends StatelessWidget {
  const HeaderState({super.key});

  @override
  Widget build(BuildContext context) {
    const urlProfile = "web/images/profile.jpg";
    const firstName = "TOLOJANAHARY";
    const lastName = "- Maminiaina Henri -";
    const poste = "Développeur web et mobile";

    return Padding(
      padding: const EdgeInsets.all(17),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(urlProfile),
                  radius: 47,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(firstName,
                        style: TextStyle(
                            letterSpacing: 10,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black87)),
                    Text(lastName,
                        style: TextStyle(
                          letterSpacing: 5.5,
                          color: Colors.black87,
                          backgroundColor: Colors.white70,
                        )),
                    Text(
                      poste,
                      style: TextStyle(
                        letterSpacing: 4.5,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
