import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:furnitures_app/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final  List<CameraDescription> cameras = await availableCameras();
  final CameraDescription firstCamera = cameras.first;

  runApp(MyApp(firstCamera: firstCamera));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key, required this.firstCamera});

  final CameraDescription firstCamera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.dmSansTextTheme().apply(displayColor: textColor),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.white)
      ),
      home:  HomeScreen(firstCamera: firstCamera),
    );
  }
}
