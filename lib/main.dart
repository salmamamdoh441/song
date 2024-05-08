import 'package:flutter/material.dart';
import 'package:song/controller/song_controller.dart';
import 'package:song/view/home_screen.dart';


main(){
  runApp(const SongApp());
}
class SongApp extends StatelessWidget {
  const SongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

