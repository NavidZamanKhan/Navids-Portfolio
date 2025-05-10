import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navids_portfolio/screens/home_page.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: Colors.orangeAccent,
  brightness: Brightness.dark,
);

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MyWebApp());
}

class MyWebApp extends StatelessWidget {
  const MyWebApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
