import 'package:flutter/material.dart';

class SkillState extends StatelessWidget {
  const SkillState({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Compétences";
    const urlFlutter = "web/images/flutter.jpg";
    const urlSymfony = "web/images/symfony.jpg";
    const urlPython = "web/images/python.jpg";
    const urlHtml = "web/images/html.jpg";
    const urlCss = "web/images/css.jpg";
    const urlJavascript = "web/images/javascript.jpg";

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
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(urlFlutter),
                        radius: 27,
                      ),
                      Text("Flutter", style: TextStyle(fontWeight: FontWeight.w700,fontSize:12))
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(urlSymfony),
                        radius: 27,
                      ),
                      Text("Symfony", style: TextStyle(fontWeight: FontWeight.w700,fontSize:12)),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(urlHtml),
                        radius: 27,
                      ),
                      Text("HTML", style: TextStyle(fontWeight: FontWeight.w700,fontSize:12)),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(urlCss),
                        radius: 27,
                      ),
                      Text("CSS", style: TextStyle(fontWeight: FontWeight.w700,fontSize:12)),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(urlJavascript),
                        radius: 27,
                      ),
                      Text("JavaScript", style: TextStyle(fontWeight: FontWeight.w700,fontSize:12)),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(urlPython),
                        radius: 27,
                      ),
                      Text("Python", style: TextStyle(fontWeight: FontWeight.w700,fontSize:12))
                    ],
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
