import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resonance/app/app.dart';
import 'package:resonance/contexts/home_context.dart';
import 'package:resonance/contexts/request_context.dart';
import 'package:resonance/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RequestContext()),
        ChangeNotifierProvider(create: (_) => HomeContext()),
      ],
      child: MaterialApp(
        title: 'Resonance - HTTP Test',
        theme: AppTheme.darkTheme,
        home: const AppConfig(),
      ),
    );
  }
}
