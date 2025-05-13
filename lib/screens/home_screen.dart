import 'package:flutter/material.dart';
import '../data/user_data.dart';
import 'portfolio_page.dart';
import 'resume_page.dart';
import '../widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 900;
    final isPhone = MediaQuery.of(context).size.width <= 600;
    return Scaffold(
      backgroundColor: const Color(0xFF18191A),
      body: SafeArea(
        child: Row(
          children: [
            if (isWide) Expanded(flex: 2, child: ProfileCard(expand: true)),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isPhone) ProfileCompactCard(),
                      _NavBar(),
                      const SizedBox(height: 32),
                      _AboutSection(),
                      const SizedBox(height: 32),
                      _WhatIDoSection(),
                      const SizedBox(height: 32),
                      _SkillsSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: null, // No Drawer in phone mode
    );
  }
}

class _NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _NavTab('About', true),
        GestureDetector(
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => ResumePage()));
          },
          child: _NavTab('Resume', false),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => PortfolioPage()));
          },
          child: _NavTab('Portfolio', false),
        ),
      ],
    );
  }
}

Widget _NavTab(String label, bool selected) {
  return Container(
    margin: const EdgeInsets.only(right: 24),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration:
        selected
            ? BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(16),
            )
            : null,
    child: Text(
      label,
      style: TextStyle(
        color: selected ? Colors.amber : Colors.white70,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
  );
}

class _AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'About Me',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 32,
              height: 4,
              color: Colors.amber,
              margin: const EdgeInsets.only(bottom: 8),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          UserData.about,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

class _WhatIDoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPhone = MediaQuery.of(context).size.width <= 600;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What I'm Doing",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        GridView.count(
          crossAxisCount: isPhone ? 1 : 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          mainAxisSpacing: 18,
          crossAxisSpacing: 18,
          childAspectRatio: isPhone ? 3.5 : 2.8,
          children: UserData.whatIDo.map((item) => _WhatIDoCard(item)).toList(),
        ),
      ],
    );
  }
}

Widget _WhatIDoCard(Map<String, String> item) {
  return Container(
    width: 320,
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: const Color(0xFF232325),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(_iconForWhatIDo(item['icon']!), color: Colors.amber, size: 36),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['title']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item['desc']!,
                style: const TextStyle(color: Colors.white70, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

IconData _iconForWhatIDo(String icon) {
  switch (icon) {
    case 'phone_android':
      return Icons.phone_android_rounded;
    case 'web':
      return Icons.web_rounded;
    case 'design_services':
      return Icons.design_services_rounded;
    case 'cloud':
      return Icons.cloud_rounded;
    default:
      return Icons.star;
  }
}

class _SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                UserData.skills
                    .map(
                      (img) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child:
                              (img.startsWith('http'))
                                  ? Image.network(
                                    img,
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  )
                                  : Image.asset(
                                    img,
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 4,
          width: 300,
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}

void launchUrl(String url) async {
  // Use url_launcher package in your pubspec.yaml
  // import 'package:url_launcher/url_launcher.dart';
  // await launch(url);
}
