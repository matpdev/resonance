import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resonance/contexts/home_context.dart';
import 'package:resonance/pages/home/views/dashboard/view.dart';
import 'package:resonance/utils/enums.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeContext>(
        builder: (context, value, child) {
          return Row(
            children: [
              /// Views
              Expanded(child: viewShow(value.view)),

              /// Drawer
              Container(
                width: 200,
                decoration: BoxDecoration(color: Colors.black),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget viewShow(HomePageView view) {
    return switch (view) {
      HomePageView.Dashboard => DashboardView(),
      _ => DashboardView(),
    };
  }
}
