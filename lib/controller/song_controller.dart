import 'package:song/model/song_model.dart';

class SongController{
  static bool loading = true;
  static SongModel getSongInfo(){
    return SongModel(name: 'aw2at y donya', des: 'gamila awy', artist: 'mohamed foad');
    // return SongModel.fromjson(
    //     {
    //       "name" : "aw2at ya donya",
    //       "des" : "gamila awy",
    //       "artist" : "mohamed foad",
    //     }
    //
    // );
  }
}
