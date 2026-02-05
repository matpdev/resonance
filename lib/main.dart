// The original content is temporarily commented out to allow generating a self-contained demo - feel free to uncomment later.

// // The original content is temporarily commented out to allow generating a self-contained demo - feel free to uncomment later.
//
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

// import 'package:flutter/material.dart';
// import 'package:resonance/src/rust/api/simple.dart';
// import 'package:resonance/src/rust/frb_generated.dart';

// Future<void> main() async {
//   await RustLib.init();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
//         body: Center(
//           child: Text(
//             'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`',
//           ),
//         ),
//       ),
//     );
//   }
// }
