import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitures_app/constant.dart';

import '../screens/home/camera_screen.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({super.key, required this.firstCamera});

  final CameraDescription firstCamera;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: 24,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CameraScreen(
                    camera: firstCamera,
                ),
              ),
            );
          },
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
