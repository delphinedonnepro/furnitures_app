import 'package:flutter/material.dart';
import 'package:furnitures_app/size_config.dart';

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
        //AppBarIcon(firstCamera: null,),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
