class UserData {
  static const String name = "Your Name";
  static const String role = "Flutter Developer";
  static const String email = "your.email@example.com";
  static const String phone = "+123 4567890";
  static const String location = "Your City, Country";
  static const String profileImageUrl =
      "https://i.pravatar.cc/150?img=3"; // Example online image
  static const String about = '''
A passionate Flutter developer with strong expertise in cross-platform apps, REST APIs, UI/UX, widgets, and state management solutions. 
Proven track record in delivering cutting-edge solutions, including API integration, third-party libraries, and performance optimization. 
Adept at debugging to ensure high-quality, responsive apps and an agile collaborator committed to staying current with industry trends.

If you're seeking a skilled Flutter developer to breathe life into your project and exceed your expectations, I am here to collaborate and create magic together. Reach out, and let's transform your vision into a reality!
''';

  static const List<Map<String, String>> contacts = [
    {"type": "email", "value": email},
    {"type": "phone", "value": phone},
    {"type": "location", "value": location},
  ];

  static const List<Map<String, String>> socials = [
    {"type": "linkedin", "url": "https://linkedin.com/"},
    {"type": "github", "url": "https://github.com/"},
    {"type": "google", "url": "https://google.com/"},
    {"type": "twitter", "url": "https://twitter.com/"},
  ];

  static const List<Map<String, String>> whatIDo = [
    {
      "title": "Mobile Apps",
      "desc": "Professional development of applications for Android and iOS.",
      "icon": "phone_android",
    },
    {
      "title": "Web Development",
      "desc": "High-quality development of sites at the professional level.",
      "icon": "web",
    },
    {
      "title": "UI/UX Design",
      "desc":
          "The most modern and high-quality design made at a professional level.",
      "icon": "design_services",
    },
    {
      "title": "Backend Development",
      "desc":
          "High-performance backend services designed for scalability and seamless user experience.",
      "icon": "cloud",
    },
  ];

  static const List<String> skills = [
    "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg",
    "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg",
    "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/firebase/firebase-plain.svg",
    "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postman/postman-original.svg",
  ];

  static const List<Map<String, String>> portfolio = [
    {
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg",
      "caption": "My Portfolio Website",
      "link": "https://yourwebsite.com",
    },
    {
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg",
      "caption": "My Portfolio Website",
      "link": "https://yourwebsite.com",
    },
    {
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg",
      "caption": "My Portfolio Website",
      "link": "https://yourwebsite.com",
    },
    {
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg",
      "caption": "My Portfolio Website",
      "link": "https://yourwebsite.com",
    },
    // Add more projects as needed
  ];

  static const List<Map<String, String>> education = [
    {
      "school": "Nihareeka College Of Management And Information Technology",
      "degree":
          "Bachelor of Science in Computer Science and Information Technology (B.Sc. CSIT)",
      "period": "2017 — 2021",
    },
    {
      "school": "Greenland International College",
      "degree": "+2 Science",
      "period": "2015 — 2017",
    },
  ];

  static const List<Map<String, dynamic>> experience = [
    {
      "title": "Mid-Level Flutter Developer",
      "company": "Tokma Technologies",
      "period": "Aug, 2024 – Present  •  10 mos",
      "location": "Kathmandu, Nepal",
      "bullets": [
        "Developed new features and implemented UI designs into code using Flutter.",
        "Designed and created custom in-form features including scrolling features and data entries.",
        "Integrated Google and Facebook sign-in for user authentication.",
        "Designed dynamic functionalities using the BLoC design pattern.",
        "Integrated APIs for seamless data communication and backend functionality.",
        "Implemented payment gateway integration like Khalti for secure transactions.",
        "Collaborated with other developers and backend team to deliver features.",
        "Participated in team meetings to discuss new features and project updates.",
        "Ensured smooth functionality and user-friendly experiences throughout the app.",
        "Performed code review and deployed the app in Playstore and Appstore.",
      ],
    },
    {
      "title": "Flutter Developer",
      "company": "Inflancer Technology",
      "period": "Oct, 2022 – Aug, 2024  •  1 yr, 11 mos",
      "location": "Kathmandu, Nepal",
      "bullets": [
        "Developed new features and transformed UI designs into fully functional user interfaces.",
        "Integrated payment solution like eSewa, for secure and seamless transactions.",
        "Optimized application performance to ensure a smooth and engaging user experience.",
        "Supported other team members initiatives by developing solutions to common problems and sharing those solutions.",
        "Identified and resolved bugs, improving app stability and performance.",
        "Wrote clean, maintainable, and testable code following best practices.",
        "Utilization of latest version of support libraries to ensure backward compatibility.",
        "Integrated payment solution like eSewa, for secure and seamless transactions.",
        "Collaborated with backend developers, designers, and cross-functional team to deliver scalable, high-quality solutions.",
        "Performed code review and deployed the app in Playstore and Appstore.",
      ],
    },
    {
      "title": "Flutter Developer Intern",
      "company": "YAJ Tech Pvt. Ltd",
      "period": "May, 2022 – Sep, 2022  •  5 mos",
      "location": "Kathmandu, Nepal",
      "bullets": [
        "Assisted in developing and maintaining Flutter applications, ensuring seamless functionality and user-friendly interfaces.",
        "Supported the implementation of visually appealing UI designs that aligned with client requirements and design principles.",
        "Collaborated with cross-functional teams, including back-end developers and designers, to deliver efficient, high-quality, and scalable solutions.",
        "Gained hands-on experience in debugging, troubleshooting and refining app features to improve user experience.",
      ],
    },
  ];
}
