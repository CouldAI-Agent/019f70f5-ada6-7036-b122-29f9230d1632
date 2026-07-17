import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/communities_screen.dart';
import 'screens/projects_screen.dart';

void main() {
  runApp(const TribalDevApp());
}

class TribalDevApp extends StatelessWidget {
  const TribalDevApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socio-Economic Development Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/communities': (context) => const CommunitiesScreen(),
        '/projects': (context) => const ProjectsScreen(),
      },
    );
  }
}
