import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitures_app/constant.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: 24,
          ),
          onPressed: () {},
        ),
        const Center(
          child: Text(
            "Scan",
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
