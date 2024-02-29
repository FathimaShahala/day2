// To parse this JSON data, do
//
//     final album = albumFromJson(jsonString);

import 'dart:convert';

Album albumFromJson(String str) => Album.fromJson(json.decode(str));

String albumToJson(Album data) => json.encode(data.toJson());

class Album {
  int? albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Album({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Album.fromJson(Map<String, dynamic> json) => Album(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}





/*
class Root {
    int? albumId;
    int? id;
    String? title;
    String? url;
    String? thumbnailUrl;

    Root({this.albumId, this.id, this.title, this.url, this.thumbnailUrl}); 

    Root.fromJson(Map<String, dynamic> json) {
        albumId = json['albumId'];
        id = json['id'];
        title = json['title'];
        url = json['url'];
        thumbnailUrl = json['thumbnailUrl'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['albumId'] = albumId;
        data['id'] = id;
        data['title'] = title;
        data['url'] = url;
        data['thumbnailUrl'] = thumbnailUrl;
        return data;
    }
}

*/