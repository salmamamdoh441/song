import 'package:flutter/material.dart';
import 'package:song/controller/song_controller.dart';


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
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( "MVC pattern with flutter"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(SongController.loading? 'loading' : SongController.getSongInfo().name),
            ElevatedButton(onPressed: (){
              setState(() {
                SongController.loading =! SongController.loading;
              });
            }, child: Text("get data"))
          ],
        ),
      ),
    );
  }
}
