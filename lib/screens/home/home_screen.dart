import 'package:flutter/material.dart';
import 'package:furnitures_app/design_system/app_bar_icon.dart';
import 'package:furnitures_app/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // It help us to  make our UI responsive
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu_outlined, color: Colors.black,),
            onPressed: () {},
          ),
          actions: <Widget>[
            const AppBarIcon(),
            SizedBox(width: SizeConfig.defaultSize),
          ],
        ),
        body: Body(),
      ),
    );
  }


}
