import 'package:flutter/material.dart';
import '../data/user_data.dart';

class ProfileCard extends StatelessWidget {
  final bool expand;
  const ProfileCard({this.expand = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          expand
              ? const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
              : const EdgeInsets.all(24),
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      constraints: expand ? const BoxConstraints(minHeight: 600) : null,
      decoration: BoxDecoration(
        color: const Color(0xFF232325),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment:
            expand ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage:
                    UserData.profileImageUrl.startsWith('http')
                        ? NetworkImage(UserData.profileImageUrl)
                        : AssetImage(UserData.profileImageUrl) as ImageProvider,
              ),
              const SizedBox(height: 16),
              Text(
                UserData.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  UserData.role,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ),
              const SizedBox(height: 24),
              ...UserData.contacts.map(
                (c) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    children: [
                      Icon(
                        _iconForContact(c['type']!),
                        color: Colors.amber,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          c['value']!,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    UserData.socials
                        .map(
                          (s) => IconButton(
                            icon: Icon(
                              _iconForSocial(s['type']!),
                              color: Colors.white70,
                            ),
                            onPressed: () {},
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
          if (expand) const SizedBox(height: 24),
        ],
      ),
    );
  }

  IconData _iconForContact(String type) {
    switch (type) {
      case 'email':
        return Icons.email_rounded;
      case 'phone':
        return Icons.phone_rounded;
      case 'location':
        return Icons.location_on_rounded;
      default:
        return Icons.info_outline;
    }
  }

  IconData _iconForSocial(String type) {
    switch (type) {
      case 'linkedin':
        return Icons.link;
      case 'github':
        return Icons.code;
      case 'google':
        return Icons.language;
      case 'twitter':
        return Icons.alternate_email;
      default:
        return Icons.link;
    }
  }
}

class ProfileCompactCard extends StatelessWidget {
  const ProfileCompactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF232325),
        borderRadius: BorderRadius.circular(18),
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
          CircleAvatar(
            radius: 28,
            backgroundImage:
                UserData.profileImageUrl.startsWith('http')
                    ? NetworkImage(UserData.profileImageUrl)
                    : AssetImage(UserData.profileImageUrl) as ImageProvider,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                UserData.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                UserData.role,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(
                    Icons.email_rounded,
                    color: Colors.amber,
                    size: 18,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    UserData.email,
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
