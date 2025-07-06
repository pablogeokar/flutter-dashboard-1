import 'package:flutter/material.dart';
import 'package:flutter_dashboard_1/screens/constants.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text("Dashboard", style: Theme.of(context).textTheme.titleLarge),
              Spacer(),
              Expanded(child: searchField()),
              Container(
                margin: EdgeInsets.only(left: defaultPadding),
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2,
                  vertical: defaultPadding / 4,
                ),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white10),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/profile_pic.png', height: 38),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2,
                      ),
                      child: Text("Angelina Jolie"),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextField searchField() {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: InkWell(
          onTap: () => {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
