import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:furnitures_app/design_system/app_bar_icon.dart';
import 'package:furnitures_app/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.firstCamera});

  final CameraDescription firstCamera;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            AppBarIcon(firstCamera: firstCamera),
            SizedBox(width: SizeConfig.defaultSize),
          ],
        ),
        body: Body(),
      ),
    );
  }
}
