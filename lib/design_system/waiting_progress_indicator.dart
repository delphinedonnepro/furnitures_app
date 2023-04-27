import 'package:flutter/material.dart';
import 'package:furnitures_app/constant.dart';

class WaitingProgressIndicator extends StatelessWidget{
  const WaitingProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
   return const Center(child: CircularProgressIndicator(
     color: primaryColor,
   ));
  }

}