import 'package:flutter/material.dart';
import 'package:navids_portfolio/widgets/about_me_body.dart';

class BoxContainers extends StatelessWidget {
  const BoxContainers({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(100),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          width: 300,
          height: double.infinity,
          child: Text("Hello"),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSurface,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSurface,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        title: Text(
                          "About Me",
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: () {}, child: Text("About")),
                          TextButton(onPressed: () {}, child: Text("Resume")),
                          TextButton(onPressed: () {}, child: Text("projects")),
                        ],
                      ),
                    ),
                    AboutMeBodyText(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
