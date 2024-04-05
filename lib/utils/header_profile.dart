import 'package:cv/stack/symfony.dart';
import 'package:flutter/material.dart';

const firstName = "TOLOJANAHARY";
const lastName = "Maminiaina Henri";
const poste = "Développeur web et mobile";

class ProfileState extends StatelessWidget {
  const ProfileState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Positioned(
                top: 30,
                left: 10,
                child: CircleAvatar(
                  backgroundImage: AssetImage('web/images/flutter.jpg'),
                  radius: 30,
                ),
              ),
              const Positioned(
                top: 0,
                left: 77,
                child: CircleAvatar(
                  backgroundImage: AssetImage('web/images/python.jpg'),
                  radius: 25,
                ),
              ),
              const Positioned(
                top: 0,
                right: 30,
                child: CircleAvatar(
                  backgroundImage: AssetImage('web/images/html.jpg'),
                  radius: 35,
                ),
              ),
              const Positioned(
                top: 75,
                right: 0,
                child: CircleAvatar(
                  backgroundImage: AssetImage('web/images/css.jpg'),
                  radius: 20,
                ),
              ),
              Positioned(
                bottom: 40,
                left: -10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const SymfonyWiget()));
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('web/images/symfony.jpg'),
                    radius: 40,
                  ),
                ),
              ),
              const Positioned(
                bottom: 30,
                right: 5,
                child: CircleAvatar(
                  backgroundImage: AssetImage('web/images/javascript.jpg'),
                  radius: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 50,
                    bottom: 50,
                    left: 70,
                    right:
                        70),
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('web/images/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Text(firstName,
            style: TextStyle(
                letterSpacing: 5,
                fontWeight: FontWeight.w900,
                fontSize: 19,
                fontFamily: 'Roboto' ,
                color: Colors.black87
            )
          ),
        const Text(lastName,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.black87,
              backgroundColor: Colors.white70,
              fontSize: 17,
            )),
        const Text(
          poste,
          style: TextStyle(
            letterSpacing: 3,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
