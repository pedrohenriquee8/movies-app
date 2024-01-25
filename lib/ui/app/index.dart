import 'package:flutter/material.dart';
import 'package:movies_app/ui/pages/movies/home/index.dart';
import 'package:movies_app/ui/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
