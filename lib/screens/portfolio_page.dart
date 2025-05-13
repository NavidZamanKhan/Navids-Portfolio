import 'package:flutter/material.dart';
import '../data/user_data.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        backgroundColor: const Color(0xFF232325),
      ),
      backgroundColor: const Color(0xFF18191A),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          childAspectRatio: 2.2,
          children:
              UserData.portfolio
                  .map((item) => _PortfolioCard(context, item))
                  .toList(),
        ),
      ),
    );
  }
}

Widget _PortfolioCard(BuildContext context, Map<String, String> item) {
  return Container(
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
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:
                (item['image']!.startsWith('http'))
                    ? Image.network(
                      item['image']!,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    )
                    : Image.asset(
                      item['image']!,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['caption'] ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                onPressed: () {
                  if (item['link'] != null) {
                    launchUrl(context, item['link']!);
                  }
                },
                child: const Text('View'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

void launchUrl(BuildContext context, String url) async {
  // Use url_launcher package in your pubspec.yaml
  // import 'package:url_launcher/url_launcher.dart';
  // await launch(url);
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text('Open: $url')));
}
