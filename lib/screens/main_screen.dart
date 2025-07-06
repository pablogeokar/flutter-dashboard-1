import 'package:flutter/material.dart';
import 'package:flutter_dashboard_1/components/side_menu.dart';
import 'package:flutter_dashboard_1/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(child: SideMenu()),
            Expanded(flex: 5, child: DashboardScreen()),
          ],
        ),
      ),
    );
  }
}
