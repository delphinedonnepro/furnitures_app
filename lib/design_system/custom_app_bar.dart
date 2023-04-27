import 'package:flutter/material.dart';
import 'package:furnitures_app/size_config.dart';

import 'app_bar_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu_outlined),
        onPressed: () {},
      ),
      actions: <Widget>[
        const AppBarIcon(),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
