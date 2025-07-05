import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  DrawerHeader(child: Image.asset('assets/images/logo.png')),
                  DrawerListTile(
                    title: 'Dashboard',
                    svgSrc: 'assets/icons/menu_dashboard.svg',
                    press: () {},
                  ),
                ],
              ),
            ),
            Expanded(flex: 5, child: Container(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    this.press,
  });

  final String title, svgSrc;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
      ),
      title: Text(title, style: TextStyle(color: Colors.white54)),
    );
  }
}
