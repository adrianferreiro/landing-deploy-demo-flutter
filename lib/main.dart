import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Demo',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        textTheme: GoogleFonts.firaCodeTextTheme(ThemeData.dark().textTheme),
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF00FF41);
    final dim = green.withAlpha(120);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '>',
                style: TextStyle(
                  fontSize: 64,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'DEPLOY_DEMO.exe',
                style: TextStyle(
                  fontSize: 28,
                  color: green,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '// CI/CD pipeline: GitHub Actions → Hostinger',
                style: TextStyle(fontSize: 14, color: dim),
              ),
              const SizedBox(height: 6),
              Text(
                '// status: ONLINE ✓',
                style: TextStyle(fontSize: 14, color: dim),
              ),
              const SizedBox(height: 32),
              _InfoRow(label: 'framework', value: 'Flutter Web'),
              _InfoRow(label: 'deploy', value: 'FTP via GitHub Actions'),
              _InfoRow(label: 'hosting', value: 'Hostinger'),
              _InfoRow(label: 'packages', value: 'google_fonts, url_launcher'),
              const SizedBox(height: 32),
              OutlinedButton.icon(
                onPressed: () =>
                    launchUrl(Uri.parse('https://github.com/adrianferreiro')),
                icon: const Icon(Icons.terminal, color: green),
                label: Text(
                  '[ OPEN GITHUB ]',
                  style: TextStyle(color: green, letterSpacing: 1),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: green),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                ),
              ),
              const Divider(),
              Center(child: Text('Flutter DEV')),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF00FF41);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Text(
        '$label: "$value"',
        style: TextStyle(fontSize: 14, color: green.withAlpha(180)),
      ),
    );
  }
}
