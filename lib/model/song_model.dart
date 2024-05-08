class SongModel {
  String name, des, artist;
  SongModel({required this.name, required this.des, required this.artist});
  factory SongModel.fromjson(Map<String, dynamic> json) {
    return SongModel(
      name: json["name"],
      des: json["des"],
      artist: json["artist"],
    );
  }
  Map<String, dynamic> tojson (){
    return {
      "name" : this.name,
      "des" : this.des,
      "artist" : this.artist,
    };
  }
}
