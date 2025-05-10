import 'package:flutter/material.dart';
import 'package:navids_portfolio/widgets/skill_containers.dart';

class AboutMeBodyText extends StatelessWidget {
  const AboutMeBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas , las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "What I am good at:",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 1,
                crossAxisSpacing: 32,
                mainAxisSpacing: 28,
              ),
              children: [
                SkillContainers(
                  skillDemo: "Flutter",
                  iconData: Icons.flutter_dash,
                ),
                SkillContainers(skillDemo: "Dart", iconData: Icons.code),
                SkillContainers(
                  skillDemo: "UI Design",
                  iconData: Icons.design_services,
                ),
                SkillContainers(skillDemo: "Firebase", iconData: Icons.cloud),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
