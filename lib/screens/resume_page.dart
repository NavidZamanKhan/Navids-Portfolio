import 'package:flutter/material.dart';
import '../data/user_data.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
        backgroundColor: const Color(0xFF232325),
      ),
      backgroundColor: const Color(0xFF18191A),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Education',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...UserData.education
                      .map((edu) => _EducationItem(edu))
                      .toList(),
                  const SizedBox(height: 32),
                  Text(
                    'Experience',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...UserData.experience
                      .map((exp) => _ExperienceItem(exp))
                      .toList(),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            right: 32,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // TODO: Implement download/open resume PDF
              },
              icon: const Icon(Icons.download_rounded),
              label: const Text('Download CV'),
            ),
          ),
        ],
      ),
    );
  }
}

class _EducationItem extends StatelessWidget {
  final Map<String, String> edu;
  const _EducationItem(this.edu);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            edu['school'] ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            edu['degree'] ?? '',
            style: const TextStyle(color: Colors.white70, fontSize: 15),
          ),
          const SizedBox(height: 2),
          Text(
            edu['period'] ?? '',
            style: const TextStyle(color: Colors.white54, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  final Map<String, dynamic> exp;
  const _ExperienceItem(this.exp);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF232325),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            exp['title'] ?? '',
            style: const TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            exp['company'] ?? '',
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            exp['period'] ?? '',
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
          if (exp['location'] != null) ...[
            const SizedBox(height: 4),
            Text(
              exp['location'],
              style: const TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ],
          const SizedBox(height: 10),
          if (exp['bullets'] != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                (exp['bullets'] as List).length,
                (i) => Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '• ',
                        style: TextStyle(color: Colors.amber, fontSize: 16),
                      ),
                      Expanded(
                        child: Text(
                          exp['bullets'][i],
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
